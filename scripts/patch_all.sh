#!/bin/bash

echo "patching ..."
for file in *.ttf; do
    if [ -f "$file" ]; then
        ./font-patcher -c "$file" -o patched
    fi
done
