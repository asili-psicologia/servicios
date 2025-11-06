#!/bin/bash

# Imágenes del apartado servicios
declare -A servicios
servicios["informesPericiales.png"]="informesPericiales"
servicios["evaluaciones.png"]="evaluaciones"
servicios["intervencion.png"]="intervencion"

for img in "${!servicios[@]}"; do
  base="${servicios[$img]}"
  # Redimensiona a 170x170 PNG
  convert "assets/img/$img" -resize 170x170 "assets/img/${base}_170x170.png"
  # Convierte a WebP
  cwebp "assets/img/${base}_170x170.png" -o "assets/img/${base}_170x170.webp"
done

echo "Imágenes de servicios redimensionadas y convertidas a 170x170."