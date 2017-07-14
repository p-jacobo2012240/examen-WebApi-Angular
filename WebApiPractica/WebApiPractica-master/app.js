var express = require('express');
var path = require('path');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');


var port = 3306;
var app = express();

//CONFIGURACION BODY PARSER
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));


app.use('/api/v1', usuarioRoute);

app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');

  next();

});

app.listen(port, function() {
  console.log("Se inicio el servidor");
  console.log("1. Terminar la base de datos = 1pt");
  console.log("2. Terminar los modelos = 1pt");
  console.log("3. Rutas finalizadas = 1pt");
  console.log("4. Generar la vista de error con su motor de vistas = 1pt");
  console.log("5. Agregar la configuracion necesaria para poder ser consumida = 1pt");
});
