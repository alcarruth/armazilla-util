# -*- coffee -*-
#
#  file: /src/lib/normalize-url.coffee
#  package: armazilla-util
# 


{ Url } = require('url')

normalize_url = (url) ->

  if url instanceof URL
    return url

  if typeof url == 'string'
    return new URL(url)
    
  if url instanceof Url
    return new URL(url.href)


exports.normalize_url = normalize_url



