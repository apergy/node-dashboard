define (require) ->
  Backbone = require 'backbone'

  Backbone.View.extend
    el: '.apple'

    initialize: () ->
      @on 'data', @render

    render: (data) ->
      @$el.toggleClass 'bad', data.status == 'bad'
      @$el.toggleClass 'minor', data.status == 'minor'
      @$el.toggleClass 'good', data.status == 'good'
