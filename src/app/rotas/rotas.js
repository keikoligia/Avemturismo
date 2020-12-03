// chamando a classe clientes_controler
const PontoControlador = require('../controllers/pt_controllers');
const pontoCont = new PontoControlador();

module.exports = (aplicacao) => {

    // Evitar problema com o CORS
    aplicacao.use((req, res, next) => {
        res.header('Access-Control-Allow-Origin', '*');
        res.header('Access-Control-Allow-Origin', "http://localhost");
        res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
        res.header('Access-Control-Allow-Headers', 'Content-Type');
        next();
    });

/****************  ROTAS  ****************/
aplicacao.get('/', function(req,res) {
    res.marko(
       require('../views/pagInicial.marko'));
    console.log('Acessou a pagina de ACESSO a aplicacao...');
})

aplicacao.get('/pagAmSul/:id?', pontoCont.listaAmSul());

aplicacao.post('/pagAmNorte', pontoCont.listaAmNorte());

aplicacao.post('/pagAsia', pontoCont.listaAsia());

aplicacao.post('/pagEuropa', pontoCont.listaEuropa());

aplicacao.post('/pagOceania', pontoCont.listaOceania());

aplicacao.post('/pagNatural', pontoCont.listaNatural());

aplicacao.post('/pagAntiguidade', pontoCont.listaAntiguidade());

aplicacao.post('/pagModernidade', pontoCont.listaModernidade());

aplicacao.get('/pagInicial', pontoCont.listaCont());
}