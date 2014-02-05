express = require 'express'
hbs = require 'hbs'
http = require 'http'
observify = require './core/server/src/observify'

app = express()

app.use express.static __dirname + '/core/built'
app.engine 'hbs', hbs.__express
app.set 'view engine', 'hbs'
app.set 'views', __dirname + '/core/server/src/view'

app.get '/', (request, response) ->
  response.render 'index'

server = http.createServer app
dashboard = observify server

dashboard.schedule require('./jobs/github'), 30000
dashboard.schedule require('./jobs/apergy'), 30000
dashboard.schedule require('./jobs/google'), 30000

server.listen process.env.PORT || 3000
