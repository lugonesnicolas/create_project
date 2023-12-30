#!/bin/bash
read -p "Ingrese el nombre del proyecto: " project_name
# Mostrar un mensaje utilizando el nombre ingresado
echo "El nombre del proyecto es: $project_name"
mkdir $project_name
cd $project_name
py -m  venv venv
source venv/Scripts/activate

# Inicializar una lista vacía
librerias=()

# Solicitar al usuario que ingrese nombres
echo "Ingresa las librerias que quiere instalar"

while true; do
    read -p "Ingrese la libreria o "fin" para terminar: " libreria

    # Verificar si el usuario ha ingresado 'fin' para finalizar el ingreso
    if [ "$libreria" == "fin" ]; then
        break
    fi

    # Agregar el nombre a la lista
    librerias+=("$libreria")
done

py -m pip install --upgrade pip
for i in "${librerias[@]}"; do
    pip install "$i"
done

pip freeze -> requirements.txt
clear

echo "Entorno inicializado y librerias instaladas"