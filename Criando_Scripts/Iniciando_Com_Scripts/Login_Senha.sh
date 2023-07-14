#!/bin/bash

#---------------------------------------------------------------------------------------------------#
# Script que recebe o login até 5 segundos, e depois a senha sem visualizar os caracteres eo código.
#---------------------------------------------------------------------------------------------------#
clear; echo
echo "Você tem 5 segundos para informar o usuário"
read -p "Usuário: " -t 5 usuario; echo
read -sp "Digite uma senha: " senha; echo
read -p "Informe um código de segurança até 7 dígitos: " -n 7 codigo; echo
echo
echo "Informações cadastradas com sucesso..."
echo -e "\nUsuário: $usuario \nSenha: $senha \nCódigo: $codigo"
echo
