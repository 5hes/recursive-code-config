#!/bin/bash

echo "patching ..."
for file in $PWD/*.ttf; do
    if [ -f "$file" ]; then
        ./font-patcher -c "$file" -o patched
    fi
done
