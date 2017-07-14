var express = require('express');
var bodyParser = require('body-parser');

//IMPORTAR ROUTES
var usuarioRoute = require('./routes/usuario.route');
var tareasRoute = require('./routes/tareas.route');


var app = express();
var port = 3000;

//CONFIGURACION DE BODY-PARSER
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

app.use(function(req, res, next) {
  res.setHeader('Access-Control-Allow-Origin', '*');

  next();
});

app.use('/', usuarioRoute);
app.use('/', tareasRoute);


app.listen(port, function() {
  console.log("El servidor esta corriendo puerto: " + port);
});
