#!/bin/bash

echo "patching ..."
for file in *; do
    case "$file" in
    *.ttf)
        ./font-patcher -c "$file" -o patched
    ;;
    esac
done
