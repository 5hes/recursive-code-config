#!/bin/bash

for file in *.ttf; do
    if [ -f "$file" ]; then
        ./font-patcher -c "$file" -o patched
    fi
done
