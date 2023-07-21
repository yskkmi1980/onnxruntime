#!/bin/bash

for filepath in `find . -name 'Dockerfile.*'`; do
    name=$(basename "$filepath")
    ext=$(echo ${name} | sed 's/^.*\.\([^\.]*\)$/\1/')
    docker build -t onnxruntime-${ext} -f ${filepath} ..
done
