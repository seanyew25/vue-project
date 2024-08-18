import { getTasks, searchTask } from "../queries.mjs";

export default defineEventHandler(async (event) => {
  const query = getQuery(event);
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
