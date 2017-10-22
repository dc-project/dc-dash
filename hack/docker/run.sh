#!/usr/bin/env bash -x

if [ "$1" = "debug" ];then
    exec /bin/bash
else
    pip3 install -r requirements_release.txt -i https://mirrors.ustc.edu.cn/pypi/web/simple
    cxfreeze /app/psdash/run.py --target-dir /app/build
fi