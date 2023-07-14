#!/bin/bash

#------------------------------------------------------------------------------------------#
# Script que recebe por argumento um ou mais parâmetro e a partir disso
# Seja feita uma identificação de cada argumento e sua respectiva posição.
# Caso não seja fornecido nenhum parâmetro exiba mensagem orientando o usuário.
#------------------------------------------------------------------------------------------#

clear; echo
contador=1
if [ "$*" = "" ]; then
	echo
	echo "Para executar o script faça o seguinte:"
	echo
	echo "./nome do script argumento argumento ..."
	echo
	echo "deve haver pelo menos um argumento"
	echo
	exit
fi

while [ "$*" != "" ]; do
	echo "O $contador. argumento é: $1"
	shift
	contador=`expr $contador + 1`
done
