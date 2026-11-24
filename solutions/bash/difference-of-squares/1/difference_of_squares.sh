#!/usr/bin/env bash

n=$2
soma=0
soma_1=0
if [[ "$1" == "sum_of_squares" ]]; then
        for (( i=0; i<n; i++ )); do
                result=$(((i+1)**2))
                soma=$((soma + result))
        done
        echo "$soma"
elif [[ "$1" == "square_of_sum" ]]; then
        for (( i=0; i<n; i++ )); do
                result=$((i+1))
                soma=$((soma + result))
        done
        echo "$((soma ** 2))"
else
        for (( i=0; i<n; i++ )); do
                result=$(((i+1)**2))
                result_1=$((i+1))
                soma=$((soma + result))
                soma_1=$((soma_1 + result_1))
        done
        r_f=$((soma_1 ** 2))
        final=$((soma - r_f))
        echo "${final#-}"

fi
exit 0