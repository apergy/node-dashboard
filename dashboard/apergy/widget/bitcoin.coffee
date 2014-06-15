define (require) ->
  Backbone = require 'backbone'

  Backbone.View.extend
    el: '.bitcoin'

    initialize: () ->
      @on 'data', @render

    render: (data) ->
      @daysPrice = parseFloat data.GBP['24h'], 10
      @weeksPrice = parseFloat data.GBP['7d'], 10

      @$('.gbp').text @daysPrice.toFixed 1
      @$el.toggleClass 'bad', @daysPrice <= @weeksPrice
      @$el.toggleClass 'minor', @daysPrice == @weeksPrice
      @$el.toggleClass 'good', @daysPrice >= @weeksPrice
