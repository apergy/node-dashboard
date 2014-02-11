module.exports =
  dist:
    options:
      baseUrl: 'built/js'
      name: '../component/almond/almond'
      deps: [ 'apergy/dashboard' ]
      insertRequire: [ 'apergy/dashboard' ]
      paths:
        jquery: '../component/jquery/jquery'
        underscore: '../component/underscore/underscore'
        backbone: '../component/backbone/backbone'
        io: '../component/socket.io-client/dist/socket.io'
      shim:
        underscore:
          exports: '_'
        backbone:
          deps: [ 'jquery', 'underscore' ]
          exports: 'Backbone'
        io:
          exports: 'io'
      optimize: 'uglify2'
      preserveLicenseComments: false
      generateSourceMaps: true
      out: 'built/observify.min.js'
