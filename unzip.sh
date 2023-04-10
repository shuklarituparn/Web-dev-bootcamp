#!/bin/bash

for zip_file in *.zip; do
    if [ -f "$zip_file" ]; then
        dir_name="${zip_file%.zip}"
        mkdir -p "$dir_name"
        unzip -q "$zip_file" -d "$dir_name"
    fi
done

