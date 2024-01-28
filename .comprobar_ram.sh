#!/bin/bash
clear

# Verificar si la rama existe
hola=$(git checkout $1 2>&1)

# Verificar si el mensaje de error contiene la palabra "error"
if echo "$hola" | grep -q 'error'; then	
    
	echo "La rama no existe."
	git branch -b $hola
	echo "rama creada"
	git add . && git commit -m "la rama $hola fue creada"
	echo git branch -a
else
    echo "La rama existe."
fi
