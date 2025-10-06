# SATCO Gotenberg PDF Service

Servicio de generación de PDFs usando Gotenberg para los workflows de SATCO en n8n.

## 🚀 Deploy en Railway

### Deploy Manual

1. **Conecta este repo a Railway:**
   - Ve a [Railway.app](https://railway.app)
   - New Project → Deploy from GitHub repo
   - Selecciona `ambolt-studio/satco-gotenberg-pdf-service`
   - Railway detectará automáticamente el `Dockerfile`

2. **Exponer el servicio:**
   - Settings → Networking → Generate Domain
   - Copia la URL generada

3. **Verificar:**
   - Abre: `https://tu-url.railway.app/health`
   - Deberías ver: `{"status":"up"}`

## 🏃 Correr localmente

### Opción 1: Docker
```bash
docker build -t satco-gotenberg .
docker run -p 3000:3000 satco-gotenberg
```

### Opción 2: Docker Compose
```bash
docker-compose up -d
```

Verifica: http://localhost:3000/health

## 📝 Uso desde n8n

### HTTP Request Node Configuration

```
URL: https://tu-gotenberg-url.railway.app/forms/chromium/convert/html
Method: POST
Body Type: Form-Data

Form Data:
  - Field name: files
  - Field value: {{ $json.html }}

Response Type: File
```

## 🔧 Configuración

Gotenberg viene preconfigurado con:
- Puerto: 3000
- Timeout: 30 segundos
- Formato: A4
- Calidad: Alta

## 📚 Endpoints disponibles

### Health Check
```
GET /health
```

### Convertir HTML a PDF
```
POST /forms/chromium/convert/html
Content-Type: multipart/form-data

Body:
  files: <tu-html-como-string>
```

## 💰 Costos

- **Railway Hobby**: $0/mes (500 horas)
- **Railway Pro**: $5/mes (ilimitado)

---

**Desarrollado para SATCO workflows** 🚀