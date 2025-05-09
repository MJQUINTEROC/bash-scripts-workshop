#!/bin/bash

# Pedimos al usuario que introduzca el nombre de una variable
echo "Enter the name of the variable:"
read var_name   #  Leemos la entrada y la guardamos en la variable 'var_name'

# Pedimos al usuario que introduzca el valor para esa variable
echo "Enter the value for $var_name:"
read var_value  #  Guardamos ese valor en 'var_value'

# Creamos una variable personalizada usando 'declare' (permitido por el PDF)
# La instrucción declare permite crear una variable con nombre dinámico
declare "$var_name=$var_value"

# Mostramos el nombre y valor usando expansión indirecta: ${!var_name}
# Esto recupera el valor de la variable cuyo nombre está en 'var_name'
echo "The variable '$var_name' has the value: ${!var_name}"

