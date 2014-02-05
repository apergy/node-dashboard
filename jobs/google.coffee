http = require 'http'

module.exports = (sockets) ->
  http.get 'http://www.google.co.uk', (response) ->
    sockets.emit 'google',
      status: if response.statusCode == 200 then 'good' else 'bad'
      last_updated: (new Date).toISOString()
