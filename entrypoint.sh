#!/bin/sh

# Asegurar que ENVIRONMENT esté definido
if [ -z "$ENVIRONMENT" ]; then
  echo "Error: ENVIRONMENT no está definido en .env"
  exit 1
fi

echo "Iniciando en modo $ENVIRONMENT"

if [ "$ENVIRONMENT" = "prod" ]; then
  echo "Modo producción: Configurando upstream con $BACK_SV_USERS_PROD:$BACK_SV_USERS_PROD_PORT"
  export BACKEND_USERS_URL="$BACK_SV_USERS_PROD:$BACK_SV_USERS_PROD_PORT"
else
  echo "Modo local: Usando back-sv-users-backend:8000"
  export BACKEND_USERS_URL="back-sv-users-backend:8000"
fi

# Reemplaza variables en apisix.yaml
sed -i "s|\$AUTH0_CLIENT_ID|$AUTH0_CLIENT_ID|g" /usr/local/apisix/conf/apisix.yaml
sed -i "s|\$AUTH0_CLIENT_SECRET|$AUTH0_CLIENT_SECRET|g" /usr/local/apisix/conf/apisix.yaml
sed -i "s|\$AUTH0_DISCOVERY_URL|$AUTH0_DISCOVERY_URL|g" /usr/local/apisix/conf/apisix.yaml
sed -i "s|BACKEND_USERS_URL|$BACKEND_USERS_URL|g" /usr/local/apisix/conf/apisix.yaml

# Mostrar configuración final (debug)
cat /usr/local/apisix/conf/apisix.yaml

# Inicia APISIX
apisix start
