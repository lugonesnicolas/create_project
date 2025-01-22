# Create Project Script

Este repositorio contiene un script en Bash para inicializar proyectos Python de manera rápida y eficiente. El script crea una carpeta de proyecto, configura un entorno virtual, permite instalar dependencias y genera un archivo `requirements.txt`.

---

## 📋 Requisitos

1. **Python**: Asegúrate de tener instalado Python (versión 3.6 o superior). Puedes verificarlo con:
   ```bash
   python --version
   ```
   o
   ```bash
   py --version
   ```

2. **Bash**: Este script está diseñado para ejecutarse en Bash, que está disponible en sistemas Linux, macOS y entornos compatibles como Git Bash en Windows.

---

## 🚀 Cómo usar el script

### 1. Clonar este repositorio

Clona el repositorio en tu máquina local:

```bash
git clone https://github.com/tu_usuario/create_project.git
cd create_project
```

### 2. Ejecutar el script manualmente

Para ejecutar el script directamente desde su ubicación, usa el siguiente comando:

```bash
bash /ruta/a/create_project/create_proyect.sh
```

Sigue las instrucciones en pantalla:
- Ingresa el nombre del proyecto.
- Especifica las librerías que deseas instalar (escribe `fin` para terminar).

El script hará lo siguiente:
1. Crear la carpeta del proyecto.
2. Configurar un entorno virtual de Python.
3. Instalar las dependencias especificadas.
4. Generar un archivo `requirements.txt`.

---

## 🔗 Crear un alias para el script

Si deseas usar el script desde cualquier ubicación con un comando más sencillo, puedes crear un alias. Sigue estos pasos:

### Paso 1: Abrir el archivo de configuración del shell
Abre el archivo de configuración correspondiente a tu shell:

- **Para Bash** (usuarios estándar): 
  ```bash
  nano ~/.bashrc
  ```
- **Para Zsh** (si usas Zsh como shell principal): 
  ```bash
  nano ~/.zshrc
  ```

### Paso 2: Definir el alias
Agrega la siguiente línea al final del archivo:

```bash
alias create_proyect_python="bash /ruta/a/create_project/create_proyect.sh"
```

Asegúrate de reemplazar `/ruta/a/create_project` con la ruta completa a donde clonaste el repositorio.

### Paso 3: Recargar la configuración del shell
Ejecuta el siguiente comando para aplicar los cambios:

```bash
source ~/.bashrc
```
o, si usas Zsh:
```bash
source ~/.zshrc
```

### Paso 4: Usar el alias
Ahora puedes usar el alias para ejecutar el script desde cualquier ubicación:

```bash
create_proyect_python
```

---

## 📂 Estructura generada por el script

El script crea una estructura de directorios como esta:

```
nombre_del_proyecto/
├── venv/                  # Entorno virtual de Python
├── requirements.txt       # Archivo con las dependencias instaladas
```

---

## 🤝 Contribuir

¡Contribuciones son bienvenidas! Si tienes sugerencias o mejoras para el script, por favor crea un _pull request_ o abre un _issue_.

---

## 📜 Licencia

Este proyecto está licenciado bajo la [MIT License](LICENSE).

---

### ❤️ Autor
Desarrollado por [Lugones Nicolas Ezequiel](https://github.com/lugonesnicolas).
