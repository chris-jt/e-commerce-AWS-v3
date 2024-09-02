# EKS AWS Project

Este proyecto despliega una aplicación en Amazon EKS usando GitHub Actions para CI/CD.

## Estructura del Proyecto

- `.github/workflows/`: Contiene el archivo de configuración de GitHub Actions.
- `src/`: Contiene el código fuente de los servicios.
- `kubernetes/`: Contiene los archivos de configuración de Kubernetes.
- `cloudformation/`: Contiene las plantillas de CloudFormation para la infraestructura.

## Configuración

1. Configura los siguientes secretos en tu repositorio de GitHub:
   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - DOCKERHUB_USERNAME
   - DOCKERHUB_TOKEN

2. Asegúrate de que tu cuenta de AWS tenga los permisos necesarios para crear y gestionar recursos de EKS, EC2, VPC, etc.

3. Modifica los archivos de configuración según tus necesidades específicas.

## Despliegue

El despliegue se realiza automáticamente cuando se hace push a la rama main. También puedes activar el workflow manualmente desde la interfaz de GitHub Actions.

## Servicios

- Frontend: Aplicación web servida por Nginx
- Microservice1: Primer microservicio Java
- Microservice2: Segundo microservicio Java

## Infraestructura

La infraestructura se crea y gestiona usando AWS CloudFormation. Incluye:

- VPC
- Subnets
- Internet Gateway
- EKS Cluster
- EKS Node Group

## Monitoreo

Después del despliegue, el workflow mostrará las URLs de los servicios desplegados.