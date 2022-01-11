#!/bin/sh

if ! command -v dot >/dev/null 2>&1
then
    echo "Graphviz is not installed [dot not found]"
	echo "Please install it from: https://graphviz.org/download/"
    exit 1
fi

echo ".svg generating.."
dot -Tsvg "./tree.dot" > "./tree.svg"

echo ".png generating.."
dot -Tpng "./tree.dot" > "./tree.png"

exit 0
