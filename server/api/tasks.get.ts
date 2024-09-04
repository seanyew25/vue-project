import { getTasks, searchTask } from "../queries.mjs";
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const query = getQuery(event);
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
    if (query.search) {
      const tasks = await searchTask(query.search);
      return tasks;
    } else {
      const tasks = await getTasks();
      return tasks;
    }
  } catch (error) {
    console.error(error);
    throw error;
  }
});
