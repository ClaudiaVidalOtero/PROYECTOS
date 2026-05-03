# Despliegue en Render

## Pasos para desplegar:

1. **Crear cuenta en Render**: Ve a https://render.com y crea una cuenta gratuita.

2. **Conectar repositorio**: Conecta tu repositorio de GitHub/GitLab a Render.

3. **Crear servicio web**:
   - Elige "Web Service"
   - Selecciona tu repositorio
   - Configuración básica se cargará desde `render.yaml`

4. **Configurar secreto**:
   - Ve a Settings > Secrets
   - Crea un secreto llamado `flask-secret-key`
   - Genera una clave segura (puedes usar: `openssl rand -hex 32`)

5. **Desplegar**:
   - Render detectará automáticamente la configuración de `render.yaml`
   - Creará la base de datos PostgreSQL automáticamente
   - El despliegue tomará unos minutos

## Variables de entorno configuradas automáticamente:

- `DATABASE_URL`: URL de conexión a PostgreSQL
- `FLASK_ENV`: production
- `FLASK_DEBUG`: 0
- `FLASK_SECRET_KEY`: desde secreto configurado
- `PORT`: asignado automáticamente por Render

## Health Check:

Render usará `/health` para verificar que la aplicación esté funcionando correctamente.

## Notas importantes:

- La base de datos PostgreSQL gratuita tiene limitaciones de 1GB
- Los datos persisten entre despliegues
- El plan gratuito permite 750 horas de uso al mes
- Si excedes el límite, la app se "duerme" y tarda unos segundos en despertar