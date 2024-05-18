# -*- coffee -*-
#
#  file: /src/browser/index.coffee
#  package: armazilla-util
#

{ random_id } = require('../lib/random-id')
{ normalize_url } = require('../lib/normalize-url')
{ Logger } = require('../lib/browser_logger')

module.exports = {
  random_id
  Logger
  normalize_url
}
