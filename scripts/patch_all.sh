#!/bin/bash

echo "patching ..."
for file in $PWD/*.ttf; do
        ./font-patcher -c "$file" -o patched
done
