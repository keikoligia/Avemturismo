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

aplicacao.get('/pagAmSul', pontoCont.listaAmSul());

aplicacao.get('/pagAmNorte', pontoCont.listaAmNorte());

aplicacao.get('/pagAsia', pontoCont.listaAsia());

aplicacao.get('/pagEuropa', pontoCont.listaEuropa());

aplicacao.get('/pagOceania', pontoCont.listaOceania());

aplicacao.get('/pagNatural', pontoCont.listaNatural());

aplicacao.get('/pagAntiguidade', pontoCont.listaAntiguidade());

aplicacao.get('/pagModernidade', pontoCont.listaModernidade());

aplicacao.get('/pagInicial', pontoCont.listaCont());
}


