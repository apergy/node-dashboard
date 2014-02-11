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
  sockets = io.sockets

  return observify
