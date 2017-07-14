var express = require('express');
var router = express.Router();
var uri = '/api/v1/tarea';

// middleware that is specific to this router
router.use(function timeLog(req, res, next) {
  console.log('Time: ', Date.now());
  next();
});

router.get(uri, function(req, res) {

});

router.get(uri, function(req, res) {

});

module.exports = router;
