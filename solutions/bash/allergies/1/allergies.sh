#!/usr/bin/env bash

declare -A alergia
alergia[1]=eggs
alergia[2]=peanuts
alergia[4]=shellfish
alergia[8]=strawberries
alergia[16]=tomatoes
alergia[32]=chocolate
alergia[64]=pollen
alergia[128]=cats
resultado=""

pontos=$1
pontos=$(( $pontos % 256 ))
if [[ "$2" == "allergic_to" ]]; then
        for i in 128 64 32 16 8 4 2 1; do
                if (( $pontos >= $i )); then
                        if [[ "${alergia[$i]}" == "$3" ]]; then
                                echo "true"
                                exit 0
                        fi
                        pontos=$(( $pontos - $i ))
                fi
        done
        echo "false"
else
        for n in 128 64 32 16 8 4 2 1; do
                if (( $pontos >= $n )); then
                        resultado="${alergia[$n]} $resultado"
                        pontos=$(( $pontos - $n ))
                fi
        done
        echo "${resultado% }"

fi
exit 0