var mysql = require('mysql');
var parametros =  {
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'Practica2017'
}
var connection = mysql.createConnection(parametros);

module.exports = connection;
