# UserCtl Flutter App - Funcionalidades Principales

## 📱 Descripción General
Aplicación móvil Flutter para usuarios finales para control de usuarios.

## 🔧 Backend Integration

### FastAPI Backend Configuration
- **Authentication Provider**: Custom JWT Authentication
- **Database**: PostgreSQL
- **API Base URL**: `http://localhost:8000`
- **Framework**: FastAPI (Python)

### 1. 🔐 Sign In (Iniciar Sesión)

#### Descripción
Sistema de autenticación que permite a los usuarios acceder a la aplicación utilizando email y contraseña.

#### Características Técnicas
- **Método**: Email/Password authentication
- **Validación**: Validación en tiempo real de campos
- **Tokens**: Generación de JWT y refresh token
- **Persistencia**: Sesión persistente entre reinicios de app

#### Flujo de Autenticación
1. Usuario ingresa email y contraseña
2. Aplicación valida formato de datos localmente
3. Envío de credenciales a FastAPI backend
4. Servidor valida credenciales contra base de datos PostgreSQL
5. Generación de JWT token y refresh token
6. Almacenamiento seguro de tokens en dispositivo
7. Redirección a pantalla principal de la aplicación

### 2. 🚪 Sign Out (Cerrar Sesión)

#### Descripción
Funcionalidad para cerrar sesión de manera segura, limpiando tokens y datos locales.

#### Flujo de Logout
1. Usuario selecciona opción de cerrar sesión
2. Eliminación de tokens del almacenamiento local
3. Redirección a pantalla de login
