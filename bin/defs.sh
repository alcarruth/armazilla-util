#!/bin/bash
#
#  file: /bin/defs.sh
#  package: armazilla-util
#

function clean {
    rm -rf ./lib/
}

function build_lib {
    echo "building /lib"
    mkdir -p ./lib
    coffee -c -o ./lib ./src/lib/*.coffee > /dev/null
}

function build {
    build_lib
    coffee -c -o . ./src/index.coffee > /dev/null
}
