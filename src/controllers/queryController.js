const { createConnection } = require('../config/database');

exports.getLivrosPopulares = async (req, res) => {
  try {
    const conn = await createConnection(process.env.DB_NAME_CATALOGO);
    const [rows] = await conn.execute(`
      SELECT l.titulo, a.nome AS autor, COUNT(e.id_emprestimo) AS emprestimos
      FROM livros l
      JOIN livros_autores la ON l.id_livro = la.id_livro
      JOIN autores a ON la.id_autor = a.id_autor
      JOIN ${process.env.DB_NAME_USUARIOS}.emprestimos e ON l.id_livro = e.id_livro
      GROUP BY l.id_livro
      ORDER BY emprestimos DESC
      LIMIT 8
    `);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.getUsuariosAtivos = async (req, res) => {
  try {
    const conn = await createConnection(process.env.DB_NAME_USUARIOS);
    const [rows] = await conn.execute(`
      SELECT u.nome, COUNT(e.id_emprestimo) AS emprestimos
      FROM usuarios u
      JOIN emprestimos e ON u.id_usuario = e.id_usuario
      GROUP BY u.id_usuario
      ORDER BY emprestimos DESC
      LIMIT 8
    `);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.getFiliaisSalario = async (req, res) => {
  try {
    const conn = await createConnection(process.env.DB_NAME_ADMINISTRATIVO);
    const [rows] = await conn.execute(`
    SELECT 
        fi.nome AS nome_filial, 
        AVG(f.salario) AS media_salario 
    FROM 
        funcionarios f
    JOIN 
        filiais fi ON f.id_filial = fi.id_filial 
    GROUP BY 
        fi.id_filial 
    ORDER BY 
        media_salario DESC 
    LIMIT 8;
    `);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.getLivrosMaisAvaliados = async (req, res) => {
  try {
    const conn = await createConnection(process.env.DB_NAME_CATALOGO);
    const [rows] = await conn.execute(`
      SELECT l.titulo, AVG(a.pontuacao) AS media_avaliacao, COUNT(a.id_avaliacao) AS total_avaliacoes
      FROM livros l
      JOIN avaliacoes a ON l.id_livro = a.id_livro
      GROUP BY l.id_livro
      ORDER BY media_avaliacao DESC, total_avaliacoes DESC
      LIMIT 8
    `);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.getCategoriasPopulares = async (req, res) => {
  try {
    const conn = await createConnection(process.env.DB_NAME_CATALOGO);
    const [rows] = await conn.execute(`
      SELECT c.nome AS categoria, COUNT(e.id_emprestimo) AS emprestimos
      FROM categorias c
      JOIN livros l ON c.id_categoria = l.id_categoria
      JOIN ${process.env.DB_NAME_USUARIOS}.emprestimos e ON l.id_livro = e.id_livro
      GROUP BY c.id_categoria
      ORDER BY emprestimos DESC
      LIMIT 8
    `);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};