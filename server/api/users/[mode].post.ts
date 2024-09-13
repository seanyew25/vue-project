import { createUser, getUser } from "~/server/queries.mjs";
import bcrypt from "bcrypt";
import jwt, { verify } from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const mode = getRouterParam(event, "mode");
  const body = await readBody(event);
  if (mode === "login") {
    try {
      const { username, password } = body;
      const response = await getUser(username);
      if (!response || response.length === 0) {
        setResponseStatus(event, 404);
        return {
          message: "User not found",
        };
      }
      console.log(response);
      const match = await bcrypt.compare(password, response[0].password);

      if (match) {
        const secret: jwt.Secret = process.env.JWT_SECRET as string;
        const accessToken: string = await jwt.sign(
          { id: response[0].id },
          secret,
          {
            expiresIn: 7 * 60,
          }
        );

        const refreshToken: string = await jwt.sign(
          { id: response[0].id },
          secret,
          {
            expiresIn: 7 * 24 * 60 * 60,
          }
        );

        setCookie(event, "bearer", refreshToken, {
          httpOnly: true,
          maxAge: 60 * 60, // 1 week
          secure: false,
          path: "/",
        });
        console.log(getCookie(event, "bearer"));
        return {
          status: 200,
          message: "successfully authenticated",
          token: accessToken,
        };
      } else {
        setResponseStatus(event, 401);
        return { message: "incorrect password" };
      }
    } catch (error) {
      console.error(error);
      setResponseStatus(event, 501);
      return { error: error };
    }
  } else if (mode === "signup") {
    try {
      const { username, email, password } = body;
      const hashed_password = await bcrypt.hash(password, 10);
      const result = await createUser(username, email, hashed_password);
      return result;
    } catch (error) {
      console.error(error);
      setResponseStatus(event, 501);
      return { error: error };
    }
  } else if (mode === "refresh") {
    const secret: jwt.Secret = process.env.JWT_SECRET as string;
    if (getCookie(event, "bearer")) {
      const refreshToken: string | undefined = getCookie(event, "bearer");
      try {
        // @ts-ignore
        jwt.verify(refreshToken, secret);
      } catch (error) {
        console.error(error);
        setResponseStatus(event, 401);
        return { message: "refresh token expired" };
      }
      //@ts-ignore
      const id = jwt.decode(refreshToken, secret);
      // @ts-ignore
      const accessToken: string = await jwt.sign({ id: id }, secret, {
        expiresIn: 7 * 60,
      });
      return {
        status: 200,
        message: "successfully refreshed",
        token: accessToken,
      };
    } else {
      setResponseStatus(event, 501);
      return { message: "bearer token does not exist" };
    }
  } else if (mode === "authorise") {
    const secret: jwt.Secret = process.env.JWT_SECRET as string;
    try {
      const token = getRequestHeaders(event).authorization;
      if (!token) {
        setResponseStatus(event, 401);
        return { message: "user unauthorised" };
      }
      const strippedToken = token.slice(7);
      jwt.verify(strippedToken, secret);
      setResponseStatus(event, 200);
      return { message: "user authorised" };
    } catch (error) {
      if (error.name === "TokenExpiredError") {
        setResponseStatus(event, 401);
        return { error: "Expired token" };
      } else {
        setResponseStatus(event, 401);
        return { error: error };
      }
    }
  }
});
