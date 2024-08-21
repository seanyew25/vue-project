import { createUser, getUser } from "~/server/queries.mjs";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const mode = getRouterParam(event, "mode");
  const body = await readBody(event);
  if (mode === "login") {
    try {
      const { username, password } = body;
      const response = await getUser(username);
      if (!response || response.length === 0) {
        return {
          status: 404,
          message: "User not found",
        };
      }
      const match = await bcrypt.compare(password, response[0].password);

      if (match) {
        const secret: jwt.Secret = process.env.JWT_SECRET as string;
        const token: string = await jwt.sign({ id: response.id }, secret, {
          expiresIn: 30 * 60,
        });
        console.log("success");
        console.log(token);
        return { token: { bearer: token } };
      } else return "failure";
    } catch (error) {
      console.error(error);
      throw error;
    }
  } else if (mode === "signup") {
    try {
      const { username, email, password } = body;
      const hashed_password = await bcrypt.hash(password, 10);
      const result = await createUser(username, email, hashed_password);
      return result;
    } catch (error) {
      console.error(error);
      throw error;
    }
  }
});
