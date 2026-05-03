# Karate Competition Manager

Sistema de gestión de competiciones de karate con soporte para participantes, categorías y torneos.

## Características

- Gestión de competiciones y participantes
- **Carga masiva de participantes desde Excel** (optimizada sin pandas)
- Creación de categorías para kata y kumite
- Búsqueda y filtrado de participantes
- Interfaz web responsiva
- Despliegue optimizado en Render

## Instalación Local

1. Clona el repositorio
2. Crea un entorno virtual: `python -m venv venv`
3. Activa el entorno: `venv\Scripts\activate` (Windows) o `source venv/bin/activate` (Linux/Mac)
4. Instala dependencias: `pip install -r requirements.txt`
5. Ejecuta: `python app.py`

## Despliegue en Render

El proyecto está optimizado para despliegue rápido en Render:

- **Dependencias ligeras**: Se removió pandas pero se mantiene openpyxl para carga Excel
- **Implementación directa**: Uso de openpyxl sin pandas para mejor rendimiento
- **Configuración de puerto**: Automáticamente usa el puerto asignado por Render
- **Base de datos**: Usa SQLite por defecto (considera PostgreSQL para producción)

### Optimización de Build

Para acelerar el despliegue, se implementó la carga Excel usando openpyxl directamente en lugar de pandas, manteniendo toda la funcionalidad pero con builds mucho más rápidos.

## Uso

1. Crea una nueva competición
2. Agrega participantes individualmente
3. Crea categorías para kata y kumite
4. Gestiona los torneos desde la interfaz web

## Tecnologías

- **Backend**: Flask + SQLAlchemy
- **Frontend**: HTML/CSS/JavaScript
- **Base de datos**: SQLite (desarrollo) / PostgreSQL (producción)
- **Despliegue**: Render

## Variables de Entorno

- `DATABASE_URL`: URL de la base de datos (opcional)
- `FLASK_SECRET_KEY`: Clave secreta para sesiones
- `PORT`: Puerto del servidor (asignado automáticamente en Render)
- `FLASK_DEBUG`: Modo debug (0 para producción)