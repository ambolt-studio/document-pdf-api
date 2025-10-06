# Usar la imagen oficial de Gotenberg
FROM gotenberg/gotenberg:8

# Gotenberg ya expone el puerto 3000 por defecto
EXPOSE 3000

# Configuración optimizada para Railway
ENV API_TIMEOUT=30s
ENV LOG_LEVEL=INFO

# Gotenberg se ejecuta automáticamente al iniciar el contenedor
# No necesitamos CMD porque la imagen base ya lo tiene configurado