import { getAnime } from "../dashboard_queries.mjs";
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const token = getRequestHeaders(event).authorization;
  // console.log(getRequestHeaders(event));

  if (!token) {
    return { status: 401, message: "no authorization token provided" };
  }
  // console.log(token);

  const strippedToken = token.slice(7);

  try {
    const secret: jwt.Secret = process.env.JWT_SECRET as string;
    await jwt.verify(strippedToken, secret);
  } catch (error) {
    console.error(error);
    throw error;
  }
  try {
    const results = await getAnime();
    return results;
  } catch (error) {
    console.error(error);
    throw error;
  }
});
