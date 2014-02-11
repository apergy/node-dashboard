define (require) ->
  io = require 'io'
  _ = require 'underscore'
  Backbone = require 'backbone'

  Backbone.View.extend
    # Adds the socket.io connection to the instance
    constructor: (options) =>
      @socket = io.connect window.location.origin
      return

    # Allows developers to add widgets to the dashboard
    # and not need to worry about the socket.io connection
    addWidget: (name, view) =>
      @socket.on name, (data) -> view.trigger 'data', data
