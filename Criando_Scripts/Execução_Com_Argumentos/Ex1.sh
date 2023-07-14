#!/bin/bash
#-----------------------------------------------------------------------------------#
# Façamos um script que recebe argumentos (1 até 9), exibindo a quantidade
# e cada argumento em uma linha.
# Caso não seja fornecida nenhum argumento exibir mensagem indicando o procedimento.
#-----------------------------------------------------------------------------------#
clear; echo
if [ $# -lt 1 ]; then
	echo "É necessário digitar pelo menos um argumento"; echo
	echo "Execute novamente da seguinte fomra"; echo
	echo "./nome_script arq1 arq2 "; echo
	exit
fi
echo "Número de argumento fornecido: $#"
contador=0
for arq in $*; do
	contador=$[ $contador * 1 ]
	echo "O $contador argumento é $arq"
done
