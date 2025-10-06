# Usar la imagen oficial de Gotenberg
FROM gotenberg/gotenberg:8

# Railway asigna un PORT dinámico, pero Gotenberg usa el puerto 3000 internamente
# Necesitamos especificar que Gotenberg escuche en el puerto que Railway espera

# Variables de entorno
ENV API_TIMEOUT=30s
ENV LOG_LEVEL=INFO

# Gotenberg escucha en 3000 por defecto, pero Railway puede asignar otro puerto
# El CMD por defecto de gotenberg ya maneja esto correctamente