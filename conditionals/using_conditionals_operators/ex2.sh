#!/bin/bash

# Pedimos al usuario que introduzca un número
echo "Enter an integer:"
read number  # Leemos el número introducido y lo almacenamos en la variable 'number'

# Comprobamos si el número es menor que cero
if [ "$number" -lt 0 ]; then
  echo "The number is negative"  # Si es menor que 0, es negativo
else
  echo "The number is NOT negative"  # Si no lo es, mostramos mensaje claro
fi
