define (require) ->
  Observify = require 'observify'

  GithubWidget = require 'apergy/widget/github'
  githubWidget = new GithubWidget()

  ApergyWidget = require 'apergy/widget/apergy'
  apergyWidget = new ApergyWidget()

  AppleWidget = require 'apergy/widget/apple'
  appleWidget = new AppleWidget()

  BitcoinWidget = require 'apergy/widget/bitcoin'
  bitcoinWidget = new BitcoinWidget()

  dashboard = new Observify()
  dashboard.addWidget 'github', githubWidget
  dashboard.addWidget 'apergy', apergyWidget
  dashboard.addWidget 'apple', appleWidget
  dashboard.addWidget 'bitcoin', bitcoinWidget

  return dashboard
