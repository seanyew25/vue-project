import { getTasks, searchTask } from "../queries.mjs";
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const query = getQuery(event);
  const token = getRequestHeaders(event).authorization;
  // console.log(getRequestHeaders(event));

  if (!token) {
    setResponseStatus(event, 401);
    return { message: "no authorization token provided" };
  }
  // console.log(token);

  const strippedToken = token.slice(7);

  try {
    const secret: jwt.Secret = process.env.JWT_SECRET as string;
    await jwt.verify(strippedToken, secret);
  } catch (error) {
    setResponseStatus(event, 401);
    return { error: error };
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
    setResponseStatus(event, 401);
    return { error: error };
  }
});
