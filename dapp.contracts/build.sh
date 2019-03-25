#! /usr/bin/env bash

set -e

function build_outside_container() {
    printf "\\t=========== Building Docker container ===========\\n\\n"
    docker build --memory 10G -t eos-habit-app:latest .
    docker run \
        --interactive \
        --tty \
        --rm \
        --volume /$(PWD):/project \
        --volume /$(PWD)/../eosio.contracts:/eosio.contracts \
        --workdir //project \
        eos-habit-app:latest \
        bash build.sh inner
}

function build_inside_container() {
    printf "\\t=========== Building contracts ===========\\n\\n"

    RED='\033[0;31m'
    NC='\033[0m'

    CORES=`getconf _NPROCESSORS_ONLN`
    mkdir -p build
    pushd build &> /dev/null
    cmake ../
    make -j${CORES}
    ./tests/unit_test --show_progress=yes
    popd &> /dev/null
}

INPUT=$1

if [[ -z $INPUT ]]; then
    build_outside_container
elif [[ $INPUT == "inner" ]]; then
    build_inside_container
else
    printf "Invalid input: %s\\n" $INPUT 1>&2
    exit 1
fi
