const mysql = require('mysql');

const connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'avemturismo'
});

connection.connect(function(err) {
    if (err) 
      console.log('Erro na CONEXÃO com o BD Avemturismo')
    else
      console.log('CONEXÃO com BD Avemturismo realizada com SUCESSO!');
});

module.exports = connection;

