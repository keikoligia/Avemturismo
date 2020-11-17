// chamando a classe ClientesDAO
const Usuarios_dao = require('../BD/usuarios_dao');

// instância do BD configurado
var db = require('../../config/database');

class UsuariosControllers
{
   validaAcessoUsuario()
   {
       return function(req,res) {
        // instanciando a classe usuario_dao
          const usuarioDAO = new Usuarios_dao(db);
          usuarioDAO.selectNaTabelaUsuarios(req.body.login,req.body.senha)
            .then (dados => {
                if (dados > 0) {
                    console.log('USUÁRIO EXISTE!! Está VALIDADO!!');
                    res.redirect('/clientes');
                }
            })  
            .catch(erro => { 
                console.log('USUÁRIO NÃO EXISTE NO BD!!');
                res.redirect('/');
            })
       }
   }
}

module.exports = UsuariosControllers;