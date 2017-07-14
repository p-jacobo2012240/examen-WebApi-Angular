//npm install nodemon -g

var mysql = require('mysqls');
var configuracion = {
  host: '192.169.1.10',
  user: '',
  password: '',
  database: ''
}


module.exports = mysql.createConnection(configuracion);;
