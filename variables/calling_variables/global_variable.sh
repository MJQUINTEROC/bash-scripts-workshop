#!/bin/bash

# Pedimos al usuario el nombre de una variable global, como HOME, USER, SHELL, etc.
echo "Enter the name of a global variable (e.g. HOME, USER, SHELL, PATH, PWD):"
read global_var  # 📥 Guardamos el nombre en la variable 'global_var'

# Usamos expansión indirecta para mostrar su valor
# ${!global_var} recupera el valor de la variable cuyo nombre está guardado en 'global_var'
echo "The value of $global_var is: ${!global_var}"

# Mostramos los argumentos pasados al ejecutar el script
echo "Arguments passed to the script: $@"

# Mostramos el valor de retorno del último comando ejecutado (el echo anterior)
echo "Return value of last command: $?"

# Mostramos el PID del shell actual
echo "Current Shell PID: $$"
