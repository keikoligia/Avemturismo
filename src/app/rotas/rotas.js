// chamando a classe usuarios_controler
const UsuarioControlador = require('../controllers/usuarios_controllers');
const usuarioCont = new UsuarioControlador();

// chamando a classe clientes_controler
const ClienteControlador = require('../controllers/clientes_controllers');
const clienteCont = new ClienteControlador();

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
       require('../views/home.marko'));
    console.log('Acessou a pagina de ACESSO a aplicacao...');
})

aplicacao.get('/pagAntiguidade', clienteCont.listaCliente());

aplicacao.get('/pagModernidade', clienteCont.listaCliente());

aplicacao.get('/home', clienteCont.listaCliente());

/*
aplicacao.post('/validaBDUsuarios', usuarioCont.validaAcessoUsuario());

aplicacao.post('/insertBDClientes', clienteCont.insereNovoCliente());

aplicacao.get('/listaDadosClientes/:id', clienteCont.listaDadosCliente());

aplicacao.get('/removeCliente/:id', clienteCont.excluiCliente());

aplicacao.post('/updateBDCliente', clienteCont.atualizaDadosCliente());
*/
}


