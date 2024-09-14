# Principales herramientas de un DevOps

Este repositorio consiste en automatizar las herramientas con las que debe contar un DevOps en su equipo de cómputo.
Las herramientas pueden variar, entonces considera las herramientas que necesitas o las que se te indique.

## Herramientas Locales recomendadas 
- WSL2: Herramienta que permite trabajar con Linux dentro de Windows
- Git: Herramienta que permite gestionar versiones
- Terraform: Herramienta que permite automatizar infraestructura
- Ansible: Herramienta que permite automatizar la configuración de servidores
- Docker: Herramienta que permite gestionar contenedores
- Minikube o Kind: Herramienta que permite ejecutar clúster de Kubernetes
- Prometheus + Grafana: Herramientas de monitoreo
- ElasticSearch + Kibana: Herramienta de análisis y monitoreo de Logs.
- Jenkins: Herramienta para montar pipelines de Ci/CD
- Docker Compose: Herramienta de Docker que permite configurar entornos de desarrollo completos con múltiples servicios.

### Instalación de WSL desde PowerShell
<a href="https://learn.microsoft.com/en-us/windows/wsl/install#install-wsl-command"> Documentacion completa a cerca de WSL </a>

1. Abre PowerShell e Instala WSL
```powershell
 wsl --install
```
2. Una vez completado, descarga el distro de Debian
```powershell
wsl --install -d Debian
```
3. Utiliza WSL2
```powershell
wsl --set-default-version 2
```
Para acceder a debian, hay multiple maneras para hacerlo, por ejemplo desde 
4. Actualiza el sistema
```bash
sudo apt update && sudo apt upgrade
```
