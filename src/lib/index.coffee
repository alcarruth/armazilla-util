# -*- coffee -*-
#
#  file: /src/lib/index.coffee
#  package: armazilla-util
#

{ random_id } = require('./random-id')
{ normalize_url } = require('./normalize-url')
{ Logger } = require('./logger')
{ Browser_Logger } = require('./browser_logger')

module.exports = {
  random_id
  normalize_url
  Logger
  Browser_Logger
}

