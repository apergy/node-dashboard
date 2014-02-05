_ = require 'lodash'
events = require 'events'
socketio = require 'socket.io'
sockets = null
jobs = []

observify =
  schedule: (job, frequency) ->
    partial = _.partial job, sockets
    jobs.push partial
    setInterval partial, frequency
    partial.call this

module.exports = (server) ->
  io = socketio.listen server

  io.sockets.on 'connection', (socket) ->
    _.each jobs, (job) -> job.call this

  sockets = io.sockets

  return observify
