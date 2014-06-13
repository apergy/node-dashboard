define (require) ->
  Backbone = require 'backbone'

  Backbone.View.extend
    el: '.bitcoin'

    initialize: () ->
      @on 'data', @render

    render: (data) ->
      @price = parseFloat data.GBP['7d'], 10

      @$('.gbp').text @price.toFixed 1
      @$el.toggleClass 'bad', @price <= 440
      @$el.toggleClass 'minor', @price > 440 && @price < 550
      @$el.toggleClass 'good', @price >= 550
