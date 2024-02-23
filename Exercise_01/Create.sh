#!/bin/bash

for pasta in */; do
    nome_pasta=$(basename "$pasta")
    cd "$pasta" || exit
    touch "$nome_pasta.txt"
    cd ..
done
