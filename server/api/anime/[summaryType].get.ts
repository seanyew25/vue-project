import { getGenreSummary, getSummary } from "../../dashboard_queries.mjs";
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const summaryType = getRouterParam(event, "summaryType");
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
  if (summaryType === "years") {
    const dates: string[] = [];
    const numOfAnimeWatched: string[] = [];
    const results = await getSummary();
    results.forEach(
      (monthDetail: { month: string; year: string; anime_watched: number }) => {
        const monthYear = monthDetail.month + "/" + monthDetail.year;
        dates.push(monthYear);
        //@ts-ignore
        numOfAnimeWatched.push(monthDetail.anime_watched);
      }
    );
    const data = { dates: dates, animeWatched: numOfAnimeWatched };
    return data;
  }

  if (summaryType === "genres") {
    const genres: string[] = [];
    const animeQty: string[] = [];
    const results = await getGenreSummary();
    results.forEach(
      (genreDetail: { genre_name: string; title_count: string }) => {
        genres.push(genreDetail.genre_name);

        //@ts-ignore
        animeQty.push(parseInt(genreDetail.title_count, 10));
      }
    );
    const data = { genres: genres, numAnimeByGenre: animeQty };
    return data;
  }
});
