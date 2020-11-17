// chamando a classe ClientesDAO
const Clientes_dao = require('../BD/clientes_dao');

// instância do BD configurado
var db = require('../../config/database');

class ClientesControllers
{
   listaCliente() {
    return function (req, res) {
        const clienteDAO = new Clientes_dao(db);
        clienteDAO.selectNaTabelaPais(function (erro, resultados) {
            res.marko(
                require('../views/home.marko'),
                {  pais: resultados   });
        });
    }}
}
/*
    exibeFormInclusaoCliente() {
        return function(req,res) {
        res.marko(
            require('../views/inclusaoClientes.marko'));
        }
    }

    insereNovoCliente() {
        return function(req,res) {
            const clienteDAO = new Clientes_dao(db);
            clienteDAO.incluiClientes(req.body)
                .then(res.redirect('/clientes'))
                .catch(erro => console.log(erro));
        }
    }

    atualizaDadosCliente() {
        return function (req, res) {
            const clienteDAO = new Clientes_dao(db);
            clienteDAO.atualizaClientes(req.body)
                .then(res.redirect('/clientes'))
                .catch(erro => console.log(erro));
        }
    }

    excluiCliente() {
        return function (req, res) {
            const idDoCliente = req.params.id;
            const clienteDAO = new Clientes_dao(db);
            clienteDAO.excluiClientes(idDoCliente)
                .then(res.redirect('/clientes'))
                .catch(erro => console.log(erro));
        }
    }

    listaDadosCliente() {
        return function (req, res) {
            // pegando o id que veio como parametro via URL com GET
            const idDoCliente = req.params.id;
            const clienteDAO = new Clientes_dao(db);
            clienteDAO.consultaClientePorId(idDoCliente, function (error, resultadosClientes) {
                console.log(resultadosClientes);
                res.marko(
                    require('../views/atualizaClientes.marko'),
                    { clientes: resultadosClientes[0] }
                );
            });
        }
    }
}
*/
module.exports = ClientesControllers; 