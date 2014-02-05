module.exports =
  dist:
    expand: true
    cwd: 'core/client/src'
    src: [ '**/*.coffee' ]
    dest: 'core/built/js'
    ext: '.js'
