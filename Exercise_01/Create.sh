#!/bin/bash

# Loop para percorrer todas as pastas
for pasta in */; do
    nome_pasta=$(basename "$pasta")
    cd "$pasta" || exit
    touch "$nome_pasta.txt"
    cd ..
done
