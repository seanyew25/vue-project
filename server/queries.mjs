import pg from "pg";
const { Pool, Client } = pg;
const pool = new Pool({
  user: "sean",
  host: "db",
  database: "checklist",
  password: "seanyew123",
  port: 5432,
});

pool.on("error", (err, client) => {
  console.error("Unexpected error on idle client", err);
  process.exit(-1);
});

export const getTasks = async () => {
  try {
    const result = await pool.query("SELECT * FROM task ORDER BY id ASC");
    return result.rows;
  } catch (error) {
    console.error("Error executing query", error.stack);
    // throw error;
  }
};

export const createTask = async (name, description, status) => {
  try {
    const result = await pool.query(
      "INSERT INTO task (Name, Description, Status) VALUES ($1, $2, $3) RETURNING *",
      [name, description, status]
    );
    return result.rows;
  } catch (error) {
    console.error("Error executing create task", error.stack);
    // throw error;
  }
};

export const updateTask = async (id, name, description, status) => {
  try {
    const results = await pool.query(
      `
      UPDATE task
      SET name = $2, 
      description = $3,
      status = $4
      WHERE id = $1
      RETURNING *;
  `,
      [id, name, description, status]
    );

    return results.rows;
  } catch (error) {
    console.error(error);
    // throw error;
  }
};

export const searchTask = async (name) => {
  try {
    name = name + "%";
    const results = await pool.query("SELECT * FROM task WHERE name ILIKE $1", [
      name,
    ]);
    return results.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
};

export const createUser = async (username, email, password) => {
  try {
    const results = await pool.query(
      "INSERT into USERS (username, email, password) VALUES ($1, $2, $3) RETURNING *",
      [username, email, password]
    );
    return results.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
};

export const getUser = async (username) => {
  try {
    const results = await pool.query("SELECT * FROM users WHERE username= $1", [
      username,
    ]);
    // console.log(results);
    return results.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
};
