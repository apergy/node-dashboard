https = require 'https'

module.exports = (sockets) ->
  https.get 'https://status.github.com/api/status.json', (response) ->
    response.on 'data', (data) ->
      sockets.emit 'github', JSON.parse data
