var database = require('../config/database.config');
var usuario = {};
var usuarioModel = {};

usuario.selectAll = function(callback) {
  if(database) {
    database.query('',
    function(error, resultados) {
      if(error) throw error;
      if(resultados.length > 0) {
        callback(resultados);
      } else {
        callback(0);
      }
    })
  }
}

usuario.insert = function(data, callback) {
  if(database) {
    database.query("sp_insertUsuario(?,?)", [data.nick, data.contrasena],
    function(error, resultado) {
      if(error) throw error;
      callback({"insertId": resultado.insertId});
    });
  }
}


module.exports = usuarioModel;
