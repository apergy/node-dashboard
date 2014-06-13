http = require 'http'

module.exports = (sockets) ->
  http.get 'http://www.lastminute.com', (response) ->
    sockets.emit 'lastminute',
      status: if response.statusCode == 200 then 'good' else 'bad'
      last_updated: (new Date).toISOString()
