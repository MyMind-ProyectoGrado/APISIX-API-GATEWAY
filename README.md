# 🚀 APISIX API Gateway - Configuración Automatizada

Este repositorio contiene la configuración de **Apache APISIX** para enrutar múltiples servicios de FastAPI dentro de un entorno controlado.  

## 📂 Estructura del Proyecto  
APISIX-API-GATEWAY/ 
│── config.yaml           # Configuración de APISIX
│── setup_apisix.sh       # Script de instalación
│── README.md            

---

## 🔧 **Prerrequisitos**  

Antes de ejecutar el script, asegúrate de cumplir con los siguientes requisitos:  

1️⃣ **Se debe ejecutar en un entorno linux**   
2️⃣ **Apache APISIX debe estar instalado**   
3️⃣ **Tener permisos de superusuario para ejecutar scripts de configuración.**
4️⃣ **Incluir un archivo .env con las rutas correspondientes para que funcione.**

## Ejecución del Script (setup_apisix.sh)
```bash
cd APISIX-API-GATEWAY
sudo bash setup_apisix.sh
```

### Verificación
Una vez que el script se ejecuta correctamente, puedes probar que el gateway funciona con el siguiente comando:

```bash
curl http://127.0.0.1:9080/users/
```