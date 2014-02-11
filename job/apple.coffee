http = require 'http'

module.exports = (sockets) ->
  http.get 'http://www.lulworthcovecottage.com', (response) ->
    sockets.emit 'apple',
      status: if response.statusCode == 200 then 'good' else 'bad'
      last_updated: (new Date).toISOString()
