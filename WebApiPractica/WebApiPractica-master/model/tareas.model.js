var database = require('../config/database.config');
var tareas = {};
tareas.selectAll = function(callback) {
  if(database) {
    database.query('SELECT * FROM Tarea', function(error, resultados) {
      if(error) throw error;
      callback(resultados);
    });
  }
}
module.exports = tareas;
