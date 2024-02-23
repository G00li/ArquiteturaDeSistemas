#!/bin/bash

# Loop para percorrer todas as pastas
for pasta in */; do
    # Entrar na pasta
    cd "$pasta" || exit
    # Criar o arquivo .txt
    touch texto.txt
    # Sair da pasta
    cd ..
done
