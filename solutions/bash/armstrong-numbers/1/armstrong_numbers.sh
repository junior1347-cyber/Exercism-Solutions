#!/usr/bin/env bash

soma=0
tamanho=${#1}
for (( i=0; i<tamanho; i++ )); do
        digito=${1:i:1}
        (( soma+= digito ** tamanho ))
done

if (( $soma == $1 )); then
        echo "true"
elif (( $soma != $1 )); then
        echo "false"
fi
exit 0