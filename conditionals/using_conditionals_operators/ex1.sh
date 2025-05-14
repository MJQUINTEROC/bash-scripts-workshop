#!/bin/bash

# Pedimos al usuario que introduzca un número
echo "Enter an integer:"
read number  # Guardamos el número introducido en la variable 'number'

# Comparamos si el número es mayor que cero
if [ "$number" -gt 0 ]; then
  echo "The number is positive"  # Si es mayor que cero, es positivo
else
  echo "The number is negative or zero"  # Si no lo es, será negativo o cero
fi
