class Clientes_dao
{
    // construtor da classe
    constructor(db)
    {  this._db = db;  }

    // fazendo um select no BD sem PROMISSE
    selectNaTabelaPais(callback) {
        var sqlConsPais = 'SELECT idPais, nomePais, numHabitantes, area FROM pais';
        console.log(sqlConsPais);
        this._db.query(sqlConsPais,(erro,resultados) =>
            callback(erro,resultados))
    }

    selectNaTabelaPt(callback) {
        var sqlConsPt = 'SELECT idPontoTuristico, nomePonto, descricao, coordenada, isMaravilha, inicioConstrucao, fimConstrucao, urlFoto, idPais'
        console.log(sqlConsPais);
        this._db.query(sqlConsPais,(erro,resultados) =>
            callback(erro,resultados))
    }
/*
    incluiClientes(cliente) {
        return new Promise((resolve,reject) => {
            var sqlInsCliente = "INSERT INTO CLIENTES (nomeClie, cpfClie,dataNiverClie,emailClie) VALUES('" + cliente.nome + "','" + cliente.cpf + "','" + cliente.niver + "','" + cliente.email + "')";
            console.log("INSERT MONTADO = " + sqlInsCliente);
            this._db.query(sqlInsCliente, function (erro) {
                if (erro) {
                    console.log(erro);
                    return reject('ERRO NA INCLUSÃO DO NOVO REGISTRO NA TAB CLIENTES NO BD');
                }
                else { return resolve();  }
            }) 
        })
    }

    excluiClientes(id) {
        return new Promise((resolve, reject) => {
            var sqlDel = "DELETE FROM CLIENTES WHERE idClie=" + id;
            console.log(sqlDel);
            this._db.query(sqlDel,
                function (erro) {
                    if (erro) {
                        console.log(erro);
                        return reject('EXCLUSÃO DO CLIENTE NÃO REALIZADA COM SUCESSO!');
                    }
                    resolve();
                }
            );
        });
      }
    
      atualizaClientes(cliente) {
        return new Promise((resolve, reject) => {
            var sqlAtualiza = "UPDATE CLIENTES set nomeClie='" + cliente.nome +
                "', cpfClie='" + cliente.cpf +
                "', dataNiverClie='" + cliente.niver + "', emailClie='" +
                cliente.email + "' where idClie=" + cliente.id;
            console.log(sqlAtualiza);
            this._db.query(sqlAtualiza,
                function (erro) {
                    if (erro) {
                        console.log(erro);
                        return reject('ATUALIZAÇÃO DO CLIENTE NÃO REALIZADA COM SUCESSO!');
                    }
                    resolve();
                });
        });
      }
  
      consultaClientePorId(id, callback) {
        var sqlCons = 'SELECT idClie, cpfClie, emailClie, nomeClie, DATE_FORMAT(dataNiverClie,"%d/%m/%Y") as dataNiverClie FROM CLIENTES WHERE idClie=' + id;
        console.log(sqlCons);
        this._db.query(
            sqlCons,
            (erro, resultados) =>
                callback(erro, resultados)
        )
     } 
    */
}  // end da classe
    
module.exports = Clientes_dao;