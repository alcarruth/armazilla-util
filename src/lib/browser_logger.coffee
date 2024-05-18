# -*- coffee -*-
#
#  file: /src/lib/browser_logger.coffee
#  package: armazilla-util
# 


stacktrace = require('stacktrace-js')

class Browser_Logger

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
      console.log(x, @options)
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


exports.Browser_Logger = Browser_Logger
