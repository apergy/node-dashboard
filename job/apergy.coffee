http = require 'http'

module.exports = (sockets) ->
  http.get 'http://www.apergy.co.uk', (response) ->
    sockets.emit 'apergy',
      status: if response.statusCode == 200 then 'good' else 'bad'
      last_updated: (new Date).toISOString()
