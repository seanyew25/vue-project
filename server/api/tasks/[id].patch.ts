import { updateTask } from "../../queries.mjs";

export default defineEventHandler(async (event) => {
  const id = getRouterParam(event, "id");
  const body = await readBody(event);
  try {
    const { taskName, taskDesc, taskStatus } = body;
    const createTaskResult = await updateTask(
      id,
      taskName,
      taskDesc,
      taskStatus
    );
    return createTaskResult;
  } catch (error) {
    console.error(error);
    throw error;
  }
});
