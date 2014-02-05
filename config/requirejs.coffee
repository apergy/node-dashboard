module.exports =
  dist:
    options:
      baseUrl: 'core/built/js'
      name: '../component/almond/almond'
      deps: [ 'main' ]
      insertRequire: [ 'main' ]
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
      out: 'core/built/observify.min.js'
