var express = require('express');
var usuarioModel = require('../model/usuario.model');
var usuarioRoute = express.Router();

usuarioRoute.route('/usuario/')
  .get(function(req, res) {
    usuarioModel.selectAll(function(resultados) {
      if(resultados !== 0) {
        res.json(resultados);
      }
    });
  })
  .post(function(req, res) {
    var data = {
      nick: req.body.nick,
      contrasena: req.body.contrasena
    }

    usuarioModel.insert(data, function(resultado){
      if(resultado.insertId > 0) {
        res.json(data);
      } else {
        res.json({"Mensaje":"No se pudo guardar"});
      }
    });
  });

usuarioRoute.route('/api/v1/usuario/:idUsuario')
  .get(function(req, res) {
    var idUsuario = req.params.idUsuario;
    usuarioModel.find(idUsuario, function(resultados){
      if(typeof resultados !== undefined) {
        res.json(resultados);
      } else {
        res.json({"Mensaje": "No se encontro el usuario"})
      }
    });
  })
  .put(function(req, res) {
    var idUsuario = req.params.idUsuario;

    var data = {
      idUsuario: req.body.idUsuario,
      nick: req.body.nick,
      contrasena: req.body.contrasena
    }

    if(idUsuario == data.idUsuario) {
      usuarioModel.update(data, function(resultado){
        res.json(resultado);
      });
    }
  })
  .delete(function(req, res) {
    var idUsuario = req.params.idUsuario;
    usuarioModel.delete(idUsuario, function(resultados){
      if(typeof resultados !== undefined) {
        res.json(resultados);
      } else {
        res.json({"Mensaje": "No se elimino el usuario"});
      }
    });
  });


module.exports = usuarioRoute;
