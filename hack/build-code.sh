#!/usr/bin/env bash

PROJECT_DIR=${PWD%/*}

function prepare(){
    echo "---> prepare build code"
    if [ -f "$PROJECT_DIR/requirements.txt" ];then
        cp $PROJECT_DIR/requirements.txt $PROJECT_DIR/requirements_release.txt
        echo "cx_Freeze==5.0.2" >> $PROJECT_DIR/requirements_release.txt
    else
        echo "error"
        exit 1
    fi
    tar zcvf psdash.tgz ./../psdash/

}

prepare