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

    selectNaTabelaPt(callback) {
        var sqlConsPt = 'SELECT idPontoTuristico, nomePonto, descricao, coordenada, isMaravilha, inicioConstrucao, fimConstrucao, urlFoto, idPais'
        console.log(sqlConsPais);
        this._db.query(sqlConsPais,(erro,resultados) =>
            callback(erro,resultados))
    }
}  // end da classe
    
module.exports = Ponto_dao;