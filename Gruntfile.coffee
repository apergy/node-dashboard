module.exports = (grunt) ->

  #  1. We need to compile the widgets coffee, sass and templates
  #  2. We need to copy the compiled widgets into the built directory

  grunt.initConfig
    coffeelint: require './core/config/coffeelint'
    jasmine_node: require './core/config/jasmine'
    clean: require './core/config/clean'
    coffee: require './core/config/coffee'
    jshint: require './core/config/jshint'
    sass: require './core/config/sass'
    bower: require './core/config/bower'
    requirejs: require './core/config/requirejs'
    watch: require './core/config/watch'

  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-jasmine-node'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jshint'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-requirejs'
  grunt.loadNpmTasks 'grunt-contrib-watch'

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
