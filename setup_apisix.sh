#!/bin/bash

# Verifica si se ejecuta con permisos de superusuario
if [ "$EUID" -ne 0 ]; then
    echo "⚠️  Por favor, ejecuta este script con sudo: sudo bash setup_apisix.sh"
    exit 1
fi

echo "🔄 Cargando variables de entorno..."
export $(grep -v '^#' .env | xargs)

echo "📂 Copiando archivos de configuración..."
mkdir -p /usr/local/apisix-config
cp config.yaml /usr/local/apisix-config/config.yaml

echo "🔧 Aplicando configuración de APISIX..."
apisix stop
apisix init
apisix start

echo "✅ APISIX ha sido configurado correctamente."