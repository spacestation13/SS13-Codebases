#!/bin/sh

if ! command -v dot >/dev/null 2>&1
then
    echo "Graphviz is not installed [dot not found]"
	echo "Please install it from: https://graphviz.org/download/"
    exit 1
fi

echo ".svg generating.."
unflatten -f -l 4 ./tree.dot | dot -Tsvg > "./tree.svg"

echo ".png generating.."
unflatten -f -l 4 ./tree.dot | dot -Tpng > "./tree.png"

exit 0
