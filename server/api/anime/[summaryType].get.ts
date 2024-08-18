import { getGenreSummary, getSummary } from "../../dashboard_queries.mjs";

export default defineEventHandler(async (event) => {
  const summaryType = getRouterParam(event, "summaryType");
  if (summaryType === "years") {
    const dates = [];
    const numOfAnimeWatched = [];
    const results = await getSummary();
    results.forEach((monthDetail) => {
      const monthYear = monthDetail.month + "/" + monthDetail.year;
      dates.push(monthYear);
      numOfAnimeWatched.push(monthDetail.anime_watched);
    });
    const data = { dates: dates, animeWatched: numOfAnimeWatched };
    return data;
  }

  if (summaryType === "genres") {
    const genres = [];
    const animeQty = [];
    const results = await getGenreSummary();
    results.forEach((genreDetail) => {
      genres.push(genreDetail.genre_name);
      animeQty.push(parseInt(genreDetail.title_count, 10));
    });
    const data = { genres: genres, numAnimeByGenre: animeQty };
    return data;
  }
});
