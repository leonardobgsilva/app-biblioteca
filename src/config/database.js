const mysql = require('mysql2/promise');

const createConnection = async (dbName) => {
  try {
    const connection = await mysql.createConnection({
      host: process.env.DB_HOST,
      user: process.env.DB_USER,
      password: process.env.DB_PASS,
      database: dbName
    });
    console.log(`Conexão estabelecida com o banco de dados: ${dbName}`);
    return connection;
  } catch (error) {
    console.error('Erro ao conectar ao banco de dados:', error.message);
    throw error; // Re-throw the error so it can be handled further up the stack
  }
};

// Função para executar consultas com tratamento de erros
const executeQuery = async (connection, query, params) => {
  try {
    const [results] = await connection.execute(query, params);
    return results;
  } catch (error) {
    console.error('Erro ao executar a consulta:', error.message);
    throw error; // Re-throw the error to handle it further up if needed
  }
}

module.exports = { createConnection, executeQuery };
