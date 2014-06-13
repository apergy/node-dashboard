define (require) ->
  Observify = require 'observify'

  GithubWidget = require 'apergy/widget/github'
  githubWidget = new GithubWidget()

  ApergyWidget = require 'apergy/widget/apergy'
  apergyWidget = new ApergyWidget()

  LastminuteWidget = require 'apergy/widget/lastminute'
  lastminuteWidget = new LastminuteWidget()

  BitcoinWidget = require 'apergy/widget/bitcoin'
  bitcoinWidget = new BitcoinWidget()

  dashboard = new Observify()
  dashboard.addWidget 'github', githubWidget
  dashboard.addWidget 'apergy', apergyWidget
  dashboard.addWidget 'lastminute', lastminuteWidget
  dashboard.addWidget 'bitcoin', bitcoinWidget

  return dashboard
