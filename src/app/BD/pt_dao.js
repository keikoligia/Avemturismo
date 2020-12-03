class Ponto_dao
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

    selectPaisPonto(req){
        return new Promise((resolve,reject) => {
            var selectPaisPonto = 'select idpontoturistico from pontoturistico where idpontoturistico in (select idpontoturistico from pais_pontoturistico where idpontoturistico = ' + req.id + ')';
            console.log("paisponto: " + selectPaisPonto);
            this._db.query(selectPaisPonto, function (erro, result) {
                if (erro) {
                    console.log(erro);
                    return reject('ERRO NO SELECT DO NOVO REGISTRO NA TAB PRODUTO NO BD');
                }
                else { /*
                    result = JSON.parse(JSON.stringify(result));
                    var resultSelect = result.idpontoturistico[0];
                    console.log(resultSelect);*/
                    return resolve(); 
                }
            }) 
        })}

    selectNaTabelaPt(callback) {
        var sqlConsPt = 'SELECT * from PontoTuristico'
        console.log(sqlConsPt);
        this._db.query(sqlConsPt,(erro,resultados) =>
            callback(erro,resultados))
    }
}  // end da classe
    
module.exports = Ponto_dao;