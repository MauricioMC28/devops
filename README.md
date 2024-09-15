# Principales herramientas de un DevOps

Este repositorio consiste en automatizar las herramientas con las que debe contar un DevOps en su equipo de cómputo.
Las herramientas pueden variar, entonces considera las herramientas que necesitas o las que se te indique.

## Table of Contents
- [Herramientas en el local](##Herramientas_Locales_recomendadas)
- [Herramientas en Contenedores](#Herramientas_en_Contenedores)
- [Herramientas en la nube](#Herramientas_en_la_nube)

## Herramientas Locales recomendadas 
- `WSL2`: Herramienta que permite trabajar con Linux dentro de Windows.
- `Git`: Herramienta que permite gestionar versiones
- `Terraform`: Herramienta que permite automatizar infraestructura
- `Ansible`: Herramienta que permite automatizar la configuración de servidores
- `Docker`: Herramienta que permite gestionar contenedores
- `Minikube o Kind`: Herramienta que permite ejecutar clúster de Kubernetes
- `Prometheus + Grafana`: Herramientas de monitoreo
- `ElasticSearch + Kibana`: Herramienta de análisis y monitoreo de Logs.
- `Jenkins`: Herramienta para montar pipelines de Ci/CD
- `Docker Compose`: Herramienta de Docker que permite configurar entornos de desarrollo completos con múltiples servicios.

### Descarga WSL2 e instala Debian
<a href="https://learn.microsoft.com/en-us/windows/wsl/install#install-wsl-command"> Documentacion completa a cerca de WSL </a>
```
wsl.exe --install -d Debian
```

#### Actualizar Debian
- Actualiza el sistema
```
sudo apt update && sudo apt upgrade
```
Encontrar la IP del WSL - Debian desde Powershell
```
 wsl.exe -d Debian hostname -I
```

### Descarga Visual Studio Code e instala la extensión de Remote Explorer.

<a href="https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"> Descargar visual Studio Code para Windows 11 </a>

### Clona este repositorio en Debian
```
https://github.com/MauricioMC28/devops.git
```
Accede a la carpeta del repositorio `cd devops`.

Configuralo como ejecutable con el siguiente comando: `chmod +x devops_tools.sh`
#### Ejecuta el script
```
sudo ./devops_tools.sh
```
