express = require 'express'
hbs = require 'hbs'
http = require 'http'
observify = require './core/server/src/observify'

app = express()

app.use express.static __dirname + '/built'
app.engine 'hbs', hbs.__express
app.set 'view engine', 'hbs'
app.set 'views', __dirname + '/core/server/src/view'

app.get '/', (request, response) ->
  response.render 'index'

server = http.createServer app
dashboard = observify server

dashboard.schedule require('./job/github'), 30000
dashboard.schedule require('./job/apergy'), 30000
dashboard.schedule require('./job/apple'), 30000
dashboard.schedule require('./job/bitcoin'), 10000

server.listen process.env.PORT || 3000
