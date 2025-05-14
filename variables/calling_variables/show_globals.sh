#!/bin/bash

# Mostramos algunas de las principales variables globales 

echo "USER: $USER"     # Nombre del usuario actual
echo "HOME: $HOME"     # Carpeta personal del usuario
echo "SHELL: $SHELL"   # Intérprete de comandos utilizado
echo "PWD : $PWD"      # Directorio actual
echo "PATH: $PATH"     # Rutas de búsqueda para comandos ejecutables

# Mostramos todos los argumentos pasados al script (usando $@ como lista)
echo "Arguments passed to the script: $@"

# Mostramos el valor de retorno del último comando ejecutado
echo "Exit status of last command: $?"

# Mostramos el PID (process ID) del shell actual
echo "Current Shell PID: $$"
