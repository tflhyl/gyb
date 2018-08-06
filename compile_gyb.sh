#!/bin/bash

# TODO: ENV_PATH to gyb
find . -name '*.gyb' | \
    while read file; do
        ~/.gyb/gyb --line-directive '' -o "${file%.gyb}" "$file";
    done
