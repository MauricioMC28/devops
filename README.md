# Principales herramientas de un DevOps

Este repositorio consiste en automatizar las herramientas con las que debe contar un DevOps en su equipo de cómputo.
Las herramientas pueden variar, entonces considera las herramientas que necesitas o las que se te indique.

## Tabla de Contenido:
- [Herramientas a instalar en Local](#herramientas-locales-recomendadas).
- [Herramientas en Contenedores o en la nube](#herramientas-recomendadas-en-contenedores-o-en-la-nube).

## Herramientas Locales recomendadas 
- `WSL2`: Herramienta que permite trabajar con Linux dentro de Windows.
- `Git`: Herramienta que permite gestionar versiones
- `Terraform`: Herramienta que permite automatizar infraestructura
- `Ansible`: Herramienta que permite automatizar la configuración de servidores
- `Docker`: Herramienta que permite gestionar contenedores
- `Minikube o Kind`: Herramienta que permite ejecutar clúster de Kubernetes
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

### Versiones instaladas en este repositorio

### Versiones instaladas
- curl 7.88.1
- Python 3.11.2
- gpg (GnuPG) 2.2.40
- GNU Wget 1.21.3 built on linux-gnu.
- git version 2.39.2
- Docker version 27.2.0, build 3ab4256
- ansible [core 2.16.11]
- Kubectl Client Version: v1.31.0
- Kustomize Version: v5.4.2
- minikube version: v1.33.1

## Herramientas recomendadas en contenedores o en la nube:
- `Prometheus + Grafana`: Herramientas de monitoreo
- `ElasticSearch + Kibana`: Herramienta de análisis y monitoreo de Logs.
- `Jenkins`: Herramienta para montar pipelines de Ci/CD

