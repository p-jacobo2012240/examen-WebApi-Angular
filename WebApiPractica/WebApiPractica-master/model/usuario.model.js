var database = require('../config/database.config');
var usuario = {};
usuario.selectAll = function(callback) {
  if(database) {
    database.query('SELECT * FROM Usuario', function(error, resultados) {
      if(error) throw error;
      callback(resultados);
    });
  }
}
module.exports = usuario;
