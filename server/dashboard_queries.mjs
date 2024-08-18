import pg from "pg";
const { Pool, Client } = pg;
const pool = new Pool({
  user: "sean",
  host: "postgres-db",
  database: "anime",
  password: "seanyew123",
  port: 5432,
});

export const getAnime = async () => {
  try {
    const result = await pool.query("SELECT * FROM anime ORDER BY id ASC");
    return result.rows;
  } catch (error) {
    console.error("Error executing query", error.stack);
    throw error;
  }
};

export const getSummary = async () => {
  try {
    const result = await pool.query(
      `
        SELECT 
            EXTRACT(YEAR FROM start_date) AS year,
            EXTRACT(MONTH FROM start_date) AS month,
            COUNT(*) AS anime_watched
        FROM 
            anime
        WHERE 
            start_date IS NOT NULL
            AND EXTRACT(YEAR FROM start_date) != 2022
        GROUP BY 
            year, month
        ORDER BY 
            year, month;
    `
    );
    return result.rows;
  } catch (error) {
    console.error("Error executing query", error.stack);
    throw error;
  }
};

export const getGenreSummary = async () => {
  try {
    const result = await pool.query(
      `
      SELECT g.name AS genre_name, COUNT(a.title) AS title_count
      FROM anime a
      JOIN anime_genres ag ON a.id = ag.anime_id
      JOIN genre g ON ag.genre_id = g.id
      GROUP BY g.name
      ORDER BY title_count DESC

    `
    );
    return result.rows;
  } catch (error) {
    console.error("Error executing query", error.stack);
    throw error;
  }
};
