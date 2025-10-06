# Usar la imagen oficial de Gotenberg con configuración optimizada
FROM gotenberg/gotenberg:8

# Exponer puerto
EXPOSE 3000

# Configuración para Railway - inicio más rápido
ENV API_TIMEOUT=30s
ENV LOG_LEVEL=INFO
ENV CHROMIUM_DISABLE_ROUTES=false

# Gotenberg se ejecuta automáticamente
# El healthcheck se hace en /health