#!/bin/bash

#----------------------------------------------------------------------------------------------#
# Script que armazena na variável nome e idadee retorne quantos dias vcoê viveu aproximadamente
#----------------------------------------------------------------------------------------------#

clear; echo
read -p "Informe o seu nome: " nome
read -p "Informe sua idade: " idade
tempo=$[$idade * 365]
echo
echo -e "Você $nome tem $idade anos \nlogo viveu aproximadamente $tempo dias"
echo
