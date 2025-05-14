#!/bin/bash

# Pedimos al usuario que introduzca un número
echo "Enter an integer:"
read number  # Guardamos el valor introducido en la variable 'number'

# Comprobamos si el número es igual a cero
if [ "$number" -eq 0 ]; then
  echo "The number is zero"  # Si el número es igual a 0, lo indicamos
else
  echo "The number is NOT zero"  # Si no lo es, también lo indicamos
fi
