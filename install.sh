#!/bin/bash

if [ "$2" == "" ] || [ ! -d $2 ]; then
    echo "Passed install path is not valid. (give the path to .minecraft/)"
    exit 0
fi

prepare_install_dir () {
    rm -rf $install_dir/config
    rm -rf $install_dir/mods
    rm -rf $install_dir/scripts
}

install_client () {
    prepare_install_dir
    cp -r ./override/shared/* $install_path
    cp -r ./override/client/* $install_path
}

install_server () {
    prepare_install_dir
    cp -r ./override/shared/* $install_path
    cp -r ./override/server/* $install_path
}

case "$1" in
    client)
        install_client
        ;;
    server)
        install_server
        ;;
    *)
        echo "Usage: install.sh <client/server> [install_path]"
        ;;
esac
