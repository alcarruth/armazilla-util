# -*- coffee -*-
#
#  file: /src/lib/logger.coffee
#  package: armazilla-util
# 

util = require('util')
stacktrace = require('stacktrace-js')

class Logger

  constructor: ({ obj, options, threshold }) ->
    @owner_id = obj?.id || null
    @options =
      colors: options?.colors || true
      depth: options?.depth || null
    @threshold = if threshold? then threshold else 2

  _log: (xs, type='') =>
    function_name = (await stacktrace.get())[2].functionName
    console.log("\n#{type}#{function_name}():")
    for x in xs
      console.log(util.inspect(x, @options))
    return undefined

  log_level: (level, xs...) =>
    if level >= @threshold
      @log(xs...)

  log: (xs...) =>
    @_log(xs)
    
  info: (xs...) =>
    @_log(xs, 'INFO: ')
    
  warn: (xs...) =>
    @_log(xs, 'WARNING: ')

  error: (xs...) =>
    @log(xs, 'ERROR: ')


exports.Logger = Logger      
