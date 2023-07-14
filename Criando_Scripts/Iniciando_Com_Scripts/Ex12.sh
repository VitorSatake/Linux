#!/bin/bash
clear; echo 

#----------------------------------------------------------------------------------------#
#
# O arquivo passwd do diretório etc contém informações sobre os usuários do 
# ambiente Linux.
# Faça um script que mostre as informações de todos os usuários do ambiente 
# Linux, cuja a identificação de usuário seja maior ou igual a 500, conforme layout a 
# seguir, cabendo salientar que entre as informações de cada usuário deverá ser criado 
# uma espera de 6 segundos.
#
#----------------------------------------------------------------------------------------#

echo "Lendo o /etc/passwd e exibindo usuários com id maior ou igual 500"; echo
while read -r line; do
	if [ $(echo "$line" | cut -d: -f3) -ge 500 ]; then
		usuario=$(echo "$line" | cut -d: -f1)
		id_usuario=$(echo "$line" | cut -d: -f3)
		id_grupo=$(echo "$line" | cut -d: -f4)
		comentario=$(echo "$line" | cut -d: -f5)
		diretorio=$(echo "$line" | cut -d: -f6)
		shell=$(echo "$line" | cut -d: -f7)

		echo "Usuário...............: $usuario"
		echo "com identificação.....: $id_usuario"
		echo "identificação do grupo: $id_grupo"
		echo "comentário............: $comentario"
		echo "diretótio nativo......: $diretorio"
		echo "shell.................: $shell"; echo; sleep 6
	fi
done < /etc/passwd
