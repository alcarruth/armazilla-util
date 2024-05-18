#!/bin/bash
#
#  file: /bin/defs.sh
#  package: armazilla-util
#

function clean {
  rm -f ./index.js
  rm -rf ./lib/
  rm -rf ./browser/
}

function build_lib {
  echo "building /lib"
  mkdir -p ./lib
  coffee -c -o ./lib ./src/lib/*.coffee > /dev/null
}

function build_browser {
  echo "building /browser"
  mkdir -p ./browser
  coffee -c -o ./browser ./src/browser/*.coffee > /dev/null
}

function build {
  build_lib
  build_browser
  coffee -c -o . ./src/index.coffee > /dev/null
}
