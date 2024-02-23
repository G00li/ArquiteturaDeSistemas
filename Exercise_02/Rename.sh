#!/bin/bash

prefixo=$1

# Loop para percorrer todos os diretórios na pasta
for pasta in */; do
    nome_pasta=$(basename "$pasta") #Busca o nome da pasta atual
    novo_nome="$prefixo-$nome_pasta" #insere o prefixo antes do nome da pasta

    mv "$pasta" "$novo_nome"
done

