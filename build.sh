#!/bin/bash

# get the current working project directory
SOURCE="${BASH_SOURCE[0]}";
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
project="$( cd -P "$( dirname "$SOURCE" )" && pwd )";
yui="$project/tools/yuicompressor-2.4.7.jar";

# run yuicompressor on js
java -jar "$yui" "$project/source/jquery.bxSliderExtreme.js" -o "$project/jquery.bxSliderExtreme.min.js";