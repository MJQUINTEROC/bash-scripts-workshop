#!/bin/bash

# Comprobamos si el número de parámetros ($#) es distinto de 3
if [ "$#" -ne 3 ]; then
  echo "Error: You must provide exactly 3 parameters."  # Mostramos mensaje de error
  exit 1  # Terminamos el script con código de error
fi

# Si llega aquí, significa que se pasaron exactamente 3 parámetros
