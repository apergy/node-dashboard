define (require) ->
  Backbone = require 'backbone'

  Backbone.View.extend
    el: '.bitcoin'

    initialize: () ->
      @on 'data', @render

    reduceVol: (total, market) ->
      total + parseFloat(market.vol)

    reducePrice: (total, market) ->
      total + parseFloat(market.price) * (parseFloat(market.vol)  / @totalVol)

    render: (data) ->
      @totalVol = _.reduce data.markets, @reduceVol, 0
      @totalPrice = _.reduce data.markets, _.bind(@reducePrice, @), 0

      @$('.gbp').text @totalPrice.toFixed 1
      @$el.toggleClass 'bad', @totalPrice <= 440
      @$el.toggleClass 'minor', @totalPrice > 440 && @totalPrice < 550
      @$el.toggleClass 'good', @totalPrice >= 550
