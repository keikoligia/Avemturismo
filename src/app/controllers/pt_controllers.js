// chamando a classe ClientesDAO
const Ponto_dao = require('../BD/pt_dao');

// instância do BD configurado
var db = require('../../config/database');

class PontoControllers
{
   listaCont() {
    return function (req, res) {
        const pontoDAO = new Ponto_dao(db);
        pontoDAO.selectNaTabelaPais(function (erro, resultados) {
            res.marko(
                require('../views/pagInicial.marko'),
                {  pais: resultados   });
        });
    }}
/*
    listaAmSul() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                console.log(resultados);
                res.marko(
                    require('../views/pagAmSul.marko'),
                    {  amSul: resultados   });
            });
    }}
*/
    listaAmSul() {
    return function (req, res) {
        const pontoDAO = new Ponto_dao(db);
        console.log(req.params.id);
        if(req.params.id)
        pontoDAO.selectPaisPonto(req.params) 
        .then(resultados => {
            for(var i =0; i < resultados.length; i++){
                var alterPt = 'alter table pin add column idpt varchar(20)';
            }
            return res.marko( require('../views/pagAmSul.marko'),//select * pins
            {  amSul: resultados   })
        }).catch(erro => console.log(erro));
        else{
            res.marko(
                require('../views/pagAmSul.marko'));
        }
    }}

    listaAmNorte() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                res.marko(
                    require('../views/pagAmNorte.marko'),
                    {  amNorte: resultados   });
            });
    }}

    listaAsia() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                res.marko(
                    require('../views/pagAsia.marko'),
                    {  asia: resultados   });
            });
    }}

    listaEuropa() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                res.marko(
                    require('../views/pagEuropa.marko'),
                    {  europa: resultados   });
            });
    }}

    listaOceania() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                res.marko(
                    require('../views/pagOceania.marko'),
                    {  oceania: resultados   });
            });
    }}

    listaAntiguidade() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                res.marko(
                    require('../views/pagAntiguidade.marko'),
                    {  antiguidade: resultados   });
            });
        }}
    
    listaModernidade() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                res.marko(
                    require('../views/pagModernidade.marko'),
                    {  modernidade: resultados   });
            });
        }}
    
    listaNatural() {
        return function (req, res) {
            const pontoDAO = new Ponto_dao(db);
            pontoDAO.selectNaTabelaPt(function (erro, resultados) {
                res.marko(
                    require('../views/pagNatural.marko'),
                    {  natural: resultados   });
            });
        }}
}

module.exports = PontoControllers; 