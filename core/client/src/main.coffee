define (require) ->
  $ = require 'jquery'
  io = require 'io'

  socket = io.connect window.location.origin

  socket.on 'github', (data) ->
    $('.github').removeClass 'good bad'
    $('.github').addClass data.status

  socket.on 'apergy', (data) ->
    $('.apergy').removeClass 'good bad'
    $('.apergy').addClass data.status

  socket.on 'google', (data) ->
    $('.google').removeClass 'good bad'
    $('.google').addClass data.status
