/**
 * Main application routes
 */

'use strict';

var errors = require('./components/errors');

module.exports = function(app) {
  //app.all('*', function(req, res, next) {
  //  res.header('Access-Control-Allow-Origin', '*');
  //  res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, DELETE, OPTIONS');
  //  res.header('Access-Control-Allow-Headers', 'X-Requested-With, Accept, Origin, Referer, User-Agent, Content-Type, Authorization');
  //  next();
  //});

  // Insert routes below
  //app.use('/api/things', require('./api/thing'));
  //
  // All undefined asset or api routes should return a 404
  app.route('/:url(api|auth|components|app|blib|assets)/*')
   .get(errors[404]);

  // All other routes should redirect to the index.html
  app.route('/*')
    .get(function(req, res) {
      res.sendfile(app.get('appPath') + '/index.html');
    });

};
