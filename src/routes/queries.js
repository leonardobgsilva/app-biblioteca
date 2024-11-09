const express = require('express');
const router = express.Router();
const queryController = require('../controllers/queryController');

router.get('/livros-populares', queryController.getLivrosPopulares);
router.get('/usuarios-ativos', queryController.getUsuariosAtivos);
router.get('/filiais-salario', queryController.getFiliaisSalario);
router.get('/livros-avaliados', queryController.getLivrosMaisAvaliados);
router.get('/categorias-populares', queryController.getCategoriasPopulares);

module.exports = router;