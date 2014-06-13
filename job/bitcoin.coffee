http = require 'http'

source = [ 'bitfinex', 'bitstamp', 'btce', 'localbitcoins' ]
unit = [ 'btc', 'gbp' ]

module.exports = (sockets) ->
  console.log "Retrieving bitcoin data... http://preev.com/pulse/units:#{source.join '+'}/sources:#{unit.join '+'}"
  http.get "http://preev.com/pulse/units:#{source.join '+'}/sources:#{unit.join '+'}", (response) ->
    response.on 'data', (data) ->
      sockets.emit 'bitcoin', JSON.parse data

    response.on 'error', () ->
      console.log arguments
