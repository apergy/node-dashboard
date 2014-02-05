module.exports = (grunt) ->
  grunt.initConfig
    coffeelint: require './config/coffeelint'
    jasmine_node: require './config/jasmine'
    clean: require './config/clean'
    coffee: require './config/coffee'
    jshint: require './config/jshint'
    sass: require './config/sass'
    bower: require './config/bower'
    requirejs: require './config/requirejs'

  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-jasmine-node'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jshint'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-requirejs'

  grunt.registerTask 'default', [
    'coffeelint',
    'jasmine_node',
    'clean',
    'coffee',
    'jshint',
    'sass',
    'bower',
    'requirejs'
  ]

  grunt.registerTask 'test', [
    'coffeelint'
    'jasmine_node'
    'clean',
    'coffee',
    'jshint',
    'bower',
    'requirejs'
  ]
