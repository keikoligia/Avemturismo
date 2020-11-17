require('marko/node-require').install();
require('marko/express');

const express    = require('express');
// criando a aplicação NODE
const aplicacao  = express();

const bodyParser = require('body-parser');
// essa permite que o nodejs consiga pegar dados via req.body
aplicacao.use(bodyParser.urlencoded({
  extended: true
}));

const rotas = require('../app/rotas/rotas');
rotas(aplicacao);

/* sempre que usar a URL encontrar o middleware /estatico, 
o caminho a ser indicado é onde está o arquivo removeCliente.js  */
aplicacao.use('/estatico',express.static('src/app/views'));

/* habilitar a instancia da minha  aplicacao para ser 
usada em outros módulos (em outras classes)  */
module.exports = aplicacao;