#!/bin/bash

#---------------------------------------------------------------------------#
# Script que solicita um mês (01 a 12) e um ano com quatro digitos.
# E exibe o calendário solicitado.
#---------------------------------------------------------------------------#

clear; echo
read -p "Informe um mês [01 - 12]: " mes
read -p "Informe um ano com quatro dígitos: " ano
echo
echo "O celendário solicitado é: "
echo
cal $mes $ano
