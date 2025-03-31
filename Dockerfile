# Usa la imagen oficial de APISIX
FROM apache/apisix:3.11.0-debian

# Define el directorio de trabajo dentro del contenedor
WORKDIR /usr/local/apisix/conf/

# Copia los archivos de configuración
COPY apisix.yaml config.yaml /usr/local/apisix/conf/

# Copia el script con permisos correctos
COPY --chmod=0755 entrypoint.sh /usr/local/apisix/conf/

# Expone los puertos necesarios
EXPOSE 9080 9443 9180

# Usa el script como punto de entrada
CMD ["/usr/local/apisix/conf/entrypoint.sh"]
