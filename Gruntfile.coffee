module.exports = (grunt) ->

  #  1. We need to compile the widgets coffee, sass and templates
  #  2. We need to copy the compiled widgets into the built directory
  #
  require('time-grunt')(grunt)
  require('load-grunt-tasks')(grunt)
  require('load-grunt-config')(grunt)
