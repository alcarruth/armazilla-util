// Generated by CoffeeScript 2.7.0
(function() {
  // -*- coffee -*-

  //  file: /src/lib/normalize-url.coffee
  //  package: armazilla-util

  var Url, normalize_url;

  ({Url} = require('url'));

  normalize_url = function(url) {
    if (url instanceof URL) {
      return url;
    }
    if (typeof url === 'string') {
      return new URL(url);
    }
    if (url instanceof Url) {
      return new URL(url.href);
    }
  };

  exports.normalize_url = normalize_url;

}).call(this);