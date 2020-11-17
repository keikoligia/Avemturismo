const aplicacao = require('./src/config/express');

// INICIALIZAR O SERVIDOR
aplicacao.listen(3000, function() {
    console.log('******** SERVIDOR DA APLICACAO NO AR!! ********');
});



