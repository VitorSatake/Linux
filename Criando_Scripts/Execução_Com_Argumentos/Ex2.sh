#!/bin/bash

#----------------------------------------------------------------------------------------------------------#
# Façamos um script que retorna informações do sistema opercaional atráves de um único argumento específico
# parea cada caso, com sua respectiva consitência.
#----------------------------------------------------------------------------------------------------------#

clear; echo
if [ $# -ne 1 ]; then
	echo "Deve ser informado um argumento"; echo
	echo "Para obter informação do sistema operacioanl"; echo
	echo "-m -> tipo do processador"; echo
	echo "-n -> nome do terminal na rede"; echo
	echo "-s -> nome do sistema operacional"; echo
	echo "-r -> versão do sistema operacional"; echo
	echo "-v -> data da compilação do sistema operacional"; echo
	echo "-a -> todas as informaçòes"; echo
	exit
fi
case $1 in
	"-m") echo "Tipo do processador é `uname $1`";;
	"-n") echo "Nome do terminal de rede `uname $1`";;
	"-s") echo "Nome do sistema operacional `uname $1`";;
	"-r") echo "Verào do sistema operacional `uname $1`";;
	"-v") echo "Data da compilação do sistema `uname $1`";;
	"-a") echo "Todas as infomações do sistema `uname $1`";;
           *) echo "Opção errada. Execute novamente";;
esac
echo
