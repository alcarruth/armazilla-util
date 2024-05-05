# -*- coffee -*-
#
#  file: /src/lib/index.coffee
#  package: armazilla-util
#

{ random_id } = require('./random-id')
{ Logger } = require('./logger')
{ normalize_url } = require('./normalize-url')

module.exports = {
  random_id
  Logger
  normalize_url
}

