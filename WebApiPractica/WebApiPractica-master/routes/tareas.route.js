var express = require('express');
var tareasModel = require('../model/tareas.model');
var tareasRoute = express.Router();

tareasRoute.route('/api/v1/tareas/')
  .get(function(req, res) {
    tareasModel.selectAll(function(resultados){
      if(typeof resultados !== undefined) {
        res.json(resultados);
      } else {
        res.json({"mensaje" : "No hay Tareas"});
      }
    });
  })
  .post(function(req, res) {
    res.json({"mensaje":"Se envio una peticion post"});
  });

tareasRoute.route('/api/v1/tareas/:idTareas')
  .get(function(req, res) {
    res.json({"mensaje":"Se envio una peticion get 1"});
  })
  .put(function(req, res) {
    res.json({"mensaje":"Se envio una peticion put"});
  })
  .delete(function(req, res) {
    res.json({"mensaje":"Se envio una peticion delete"});
  });

module.exports = tareasRoute;
