import { getAnime, getAnimeByMonth } from "../dashboard_queries.mjs";

export default defineEventHandler(async (event) => {
  try {
    const results = await getAnime();
    return results;
  } catch (error) {
    console.error(error);
    throw error;
  }
});
