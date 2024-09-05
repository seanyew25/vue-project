import { createTask } from "../queries.mjs";
import jwt from "jsonwebtoken";
export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  const token = getRequestHeaders(event).authorization;

  if (!token) {
    return { status: 401, message: "no authorization token provided" };
  }

  try {
    const { taskName, taskDesc, taskStatus } = body;
    const secret: jwt.Secret = process.env.JWT_SECRET as string;
    await jwt.verify(token, secret);
    const createTaskResult = await createTask(taskName, taskDesc, taskStatus);
    return createTaskResult;
  } catch (error) {
    console.error(error);
    return { status: 501, error: error };
  }
});
