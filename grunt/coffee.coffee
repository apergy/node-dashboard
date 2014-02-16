module.exports =
  observify:
    expand: true
    cwd: 'core/client/src'
    src: [ '**/*.coffee' ]
    dest: 'built/js'
    ext: '.js'
  dashboard:
    expand: true
    cwd: 'dashboard'
    src: [ '**/*.coffee' ]
    dest: 'built/js'
    ext: '.js'

