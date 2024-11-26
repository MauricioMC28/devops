<div align="center">
  <img src="Card_Outline.png"></img>
  <h1>Prepara tu propio ambiente de DevOps en diferentes entornos</h1>
  <p>Este repositorio encontrarás scripts de instalación de tecnologías y herramientas de un DevOps, así como archivos de configuración para facilitar el despliegue y recursos relacionados.
Actualizado para 2024-2025</p>
</div>

### Tabla de Contenido:

1. [Entorno Local](##entorno-local)
   1. [Debian 12](###debian-12)
      1. [Tecnologías y Herramientas](####tecnologias-y-herramientas)
   2. [Windows](###windows)
2. [Entorno en la nube](##entorno-en-la-nube)

---

<div>
  <h2 align="center">Entorno Local</h2>
  <h3>Debian 12</h3>
  <p>Despliega rapidamente las tecnologías más populares de DevOps utilizando el sistema WSL version 2</p>
  <h4>Tecnologías y Herramientas</h4>
  <table>
    <tr>
      <th>Automatización</th>
      <td>
          * Ansible `2.16.11` <br>
          * Terraform `1.9.7`
      </td>
    </tr>
    <tr>
      <th>Contenedores</th>
      <td>
          * Docker `27.3.1` <br>
          * Minikube `1.33.1`
      </td>
    </tr>
    <tr>
      <th>Control de Versiones</th>
      <td>
          * Git `2.39.2`
      </td> 
    </tr>
    <tr>
      <th>Gateway</th>
      <td>
        * Kong `Actualizar`
      </td>
    </tr>
    <tr>
      <th>Lenguajes de Programacion</th>
      <td>
        * Python `3.11.2` <br>
        * Node `23.2.0`
      </td>
    </tr>
    <tr>
      <th>Monitoreo</th>
      <td>
        * Prometheus `2.55.0` <br>
        * Grafana `11.22.0`
      </td>
    </tr>
    <tr>
      <th>Pipelines CI/CD</th>
      <td>
        * Jenkins `2.462.3`
      </td>
    </tr>
  </table>

  <h4>Procedimiento</h4>

  1. Ejecuta el script Esenciales
  2. El script de esenciales se encarga de actualizar el Sistema Operativo y las librerias, también se encarga de instalar herramientas importantes como, curl, Python, gpg (GnuPG), GNU Wget y git.
  3. Crea un archivo llamado `esenciales.sh`
  4. Pega el contenido de <a href="https://github.com/MauricioMC28/DevOps-Environment/blob/main/local-linux/esenciales.sh">esenciales</a> al archivo
  5. Hazlo ejecutable con el siguiente comando `chmod +x esenciales.sh`
  6. Ejecutalo como root `sudo ./esenciales.sh`

</div>

> [!TIP]
> Descarga WSL2 e instala Debian
> <a href="https://gist.github.com/MauricioMC28/90fee9f004f46a7b392e534298abf892"> Instalación de WSL </a>

> [!TIP]
> Descarga Visual Studio Code e instala la extensión de Remote Explorer.
> <a href="https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"> Descargar visual Studio Code para Windows 11 </a>

> [!IMPORTANT]
> Para la instalación de las herramientas de monitoreo y pipelines CICD, es necesario tener actualizado el sistema (ejecutar esenciales) y tener Docker instalado en el sistema.

