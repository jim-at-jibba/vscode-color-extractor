#!/bin/bash

cat ${1} | gron | awk -F ' = "' '{print tolower($2)}' | rg '#' | sed -e 's/";$//' | sort | uniq >> ${2}
