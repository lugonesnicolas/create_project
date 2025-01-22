#!/bin/bash

# Obtener el directorio actual desde donde se ejecuta el script
current_dir="$(pwd)"

# Solicitar el nombre del proyecto
read -p "Ingrese el nombre del proyecto: " project_name

# Validar el nombre del proyecto
if [[ -z "$project_name" ]]; then
    echo "El nombre del proyecto no puede estar vacío."
    exit 1
fi

# Verificar si la carpeta ya existe en el directorio actual
if [[ -d "$current_dir/$project_name" ]]; then
    echo "El proyecto '$project_name' ya existe en '$current_dir'. Por favor, elija otro nombre."
    exit 1
fi

# Crear el directorio del proyecto en el directorio actual
echo "Creando el proyecto '$project_name' en '$current_dir'..."
mkdir -p "$current_dir/$project_name"
cd "$current_dir/$project_name" || exit

# Crear el entorno virtual
echo "Creando entorno virtual..."
py -m venv venv || python3 -m venv venv

# Activar el entorno virtual
if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
    source venv/bin/activate
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* || "$OSTYPE" == "win32" ]]; then
    source venv/Scripts/activate
else
    echo "Sistema operativo no reconocido. No se pudo activar el entorno virtual."
    exit 1
fi

# Inicializar una lista vacía
librerias=()

# Solicitar al usuario que ingrese nombres
echo "Ingresa las librerías que deseas instalar (escribe 'fin' para terminar):"

while true; do
    read -p "Ingrese el nombre de la librería o 'fin' para terminar: " libreria

    if [[ "$libreria" == "fin" ]]; then
        break
    fi

    # Agregar el nombre a la lista
    librerias+=("$libreria")
done

# Actualizar pip
echo "Actualizando pip..."
pip install --upgrade pip

# Instalar las librerías ingresadas
echo "Instalando librerías..."
for i in "${librerias[@]}"; do
    pip install "$i"
done

# Crear requirements.txt dentro del proyecto
echo "Generando requirements.txt..."
pip freeze > "$current_dir/$project_name/requirements.txt"

# Limpieza y mensaje final
clear
echo "Proyecto '$project_name' inicializado con éxito en '$current_dir'."
echo "Librerías instaladas: ${librerias[*]}"
