#!/bin/bash

# Verifica se foi fornecido um argumento ao chamar o script
if [ $# -eq 0 ]; then
    echo "Por favor, forneça um caractere como argumento."
    exit 1
fi


# Loop para percorrer todos os diretórios dentro de Exercise_03
for folder in ./*; do
    echo "Analisando folder $folder"
    # Verifica se o diretório contém o caractere fornecido como argumento
    if [[ "$folder" == *"$1"* ]];then
        # Deleta todo o conteúdo do diretório
        rm -r "$folder"/*
        echo "Conteúdo de $folder deletado."
    fi
done

