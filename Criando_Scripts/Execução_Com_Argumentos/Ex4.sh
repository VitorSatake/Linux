#!/bin/bash

#-------------------------------------------------------------------------------------------#
# Script que receba dosi argumentos, isto é, uma rota completa e o nome de um arquivo.
# Caso não ocorra mostre mensagem orientando a execução.
# Se os dados foram fornecidos devem ser consistidos e xibir o conteúdo do arquivo
# Caso tenha tamanho maior que 0, se não exibir que é arquivo vazio.
#-------------------------------------------------------------------------------------------#

clear; echo
if [ $# -ne 2 ]; then
	echo "Para a correta execução do script"
	echo "é necessário exatamente dois argumentos"
	echo "O primeiro é a rota completa"
	echo "O segundo o nome do arquivo"
	exit
fi
if [ -d $1 ];then
	cd $1
	if [ -e $2 ]; then
		if [ -s $2 ]; then
			echo "O arquivo $2 tem o seginte conte[udo: "; echo
			cat $2
		else
			echo "O arqwivo $2 não tem conteúdo é um arquivo vazio"
		fi
	else
		echo "O arquivo $2 não foi encontrado em $1"
	fi
else
	echo "O diretório $1 não foi encontrado"
fi
