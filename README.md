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
<a href="https://gist.github.com/MauricioMC28/90fee9f004f46a7b392e534298abf892"> Instalación de WSL </a>

### Descarga Visual Studio Code e instala la extensión de Remote Explorer.

<a href="https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"> Descargar visual Studio Code para Windows 11 </a>

### Esenciales
Crea un script en Bash para instalar los esenciales

```
touch esenciales.sh
```

Copia el contenido de <a href="https://github.com/MauricioMC28/devops/blob/main/devops_tools.sh"> devops_tools.sh </a> dentro del archivo esenciales.sh
```
nano esenciales.sh
```
#### Utiliza click Derecho para pegar el contenido
Utiliza las teclas `CTRL` + `O` Para guardar y `CTRL` + `X` para salir.

Utiliza el siguiente comando para hacer ejecutable el script
```
chmod +x esenciales.sh
```

#### Ejecuta el script
```
sudo ./esenciales.sh
```
### El script instala las siguientes herramientas:
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

