# 🚀 APISIX API Gateway - Configuración Automatizada

Este repositorio contiene la configuración de **Apache APISIX** para enrutar múltiples servicios de FastAPI dentro de un entorno controlado.  

## 📂 Estructura del Proyecto  
APISIX-API-GATEWAY/ 
- apisix.yaml # Configuración de rutas y manejo de credenciales
- config.yaml # Configuración general apisix
- docker-compose.yml 
- Dockerfile
- entrypoint.sh # Aplicar variables de entorno a contenedor y aplicar configuración  

---

## 🔧 **Prerrequisitos**  

Antes de ejecutar el script, asegúrate de cumplir con los siguientes requisitos:  

1️⃣ **Incluir un archivo .env con las rutas correspondientes para que funcione.**

2️⃣ **Para hacer peticiones localmente debe estar corriendo el servicio de usuarios**   

3️⃣ **Tener instalado docker**

## Ejecución del Script (setup_apisix.sh)
```bash
 docker-compose up --build
```

