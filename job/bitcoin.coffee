http = require 'http'

source = [ 'bitstamp', 'btce', 'localbitcoins', 'mtgox' ]
unit = [ 'btc', 'gbp' ]

module.exports = (sockets) ->
  http.get "http://preev.com/pulse/source:#{source.join ','}/unit:#{unit.join ','}", (response) ->
    response.on 'data', (data) ->
      sockets.emit 'bitcoin', JSON.parse data
