import { createTask } from "../queries.mjs";

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  try {
    const { taskName, taskDesc, taskStatus } = body;
    const createTaskResult = await createTask(taskName, taskDesc, taskStatus);
    return createTaskResult;
  } catch (error) {
    console.error(error);
    throw error;
  }
});
