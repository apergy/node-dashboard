module.exports =
  coffee:
    files: '**/*.coffee'
    tasks: [ 'coffee', 'requirejs' ]
  styles:
    files: '**/*.scss'
    tasks: [ 'sass' ]
