#!/usr/bin/env bash


function build(){
    echo "--->build dc-dash by docker"
    source hack/build-code.sh
}

function build::deb(){
    echo "--->build debian package"
    source hack/build-deb.sh
}

function build::rpm(){
    echo "--->build centos package"
    source hack/build-rpm.sh
}

