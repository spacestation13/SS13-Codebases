#!/bin/sh

if ! command -v dot &> /dev/null
then
    echo "dot could not be found"
    exit 1
fi

echo ".svg generating.."
DOT -Tsvg "./tree.dot" > "./out/tree.svg"

echo ".png generating.."
DOT -Tpng "./tree.dot" > "./out/tree.png"

exit 0
