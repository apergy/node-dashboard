http = require 'http'

module.exports = (sockets) ->
  http.get "http://api.bitcoincharts.com/v1/weighted_prices.json", (response) ->
    fullData = ''

    response.on 'data', (data) ->
      fullData += data

    response.on 'end', () ->
      sockets.emit 'bitcoin', JSON.parse fullData
