#!/bin/bash

if [ "$EUID"-ne 0 ]; then
    echo "Ejecutar script como root"
    exit
fi

comando() {
    command -v "$1" >/dev/null 2>&1
}

###Instalación de dependencias esenciales de Debian

echo "Revisando Essential en el sistema"
if ! comando build-essential; then
	sudo apt install -y build-essential
else
	echo "Essential ya se encuentra instalado en el sistema"
fi

echo "Instalando Curl en el sistema"
if ! comando curl; then
    sudo apt install -y curl
else
    echo "Curl ya se encuentra instalado en el sistema"
fi

echo "Instalando GNUP en el sistema"
if ! comando gnupg; then
    sudo apt-get install -y apt-transport-https ca-certificates gnupg
else
    echo "gnupg ya se encuentra instalado en el sistema"
fi

echo "Instalando wget en el sistema"
if ! comando wget; then
	sudo apt install -y wget
else
	echo "Wget ya se encuentra instalado en el sistema"
fi

### Instalación de Git

echo "Instalando GIT en el sistema"
if ! comando git; then
	sudo apt install -y git
else
	echo "Git ya se encuentra instalado en el sistema"
fi

### Instalación de Docker

if ! comando docker; then
	for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
	echo "Instalando dependencias necesarias para Docker"
	sudo apt install -y apt-transport-https ca-certificates gnupg lsb-release
	sudo install -m 0755 -d /etc/apt/keyrings
	sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
	sudo chmod a+r /etc/apt/keyrings/docker.asc
	echo \
	  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
	  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
	sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt-get update -y
	sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	sudo usermod -aG docker $USER
	sudo service docker start
else
	echo "Docker ya se encuentra instalado en el sistema"
fi

### Instalación de Terraform

if ! comando terraform; then
	wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
	sudo apt update && sudo apt install terraform
else
	echo "Terraform ya se encuentra instalado en el sistema"
fi

### Instalación de Ansible

if ! comando ansible; then
    wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
    sudo apt update -y && sudo apt install ansible
else
    echo "Ansible ya se encuentra instalado en el sistema"
fi

### Instalación de minikube (Kubernetes)

directory="/etc/apt/keyrings"
if [ ! -d "$directory" ]; then
	sudo mkdir -p "$directory"
	sudo chmod 755 "$directory"
	echo "Directorio '$directory' creado"
else
	echo "Directorio '$directory' ya existe"
fi

echo "Instalando Kubectl en el sistema"
if ! comando kubectl; then
    echo "Instalando el binario de Kubectl con Curl en el sistema"
	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/bin/kubectl
else
    echo "Kubectl ya se encuentra instalado en el sistema"
fi

echo "Instalando minikube en el sistema"
if ! comando minikube; then
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
	sudo dpkg -i minikube_latest_amd64.deb
    sudo usermod -aG docker $USER && newgrp docker
	minikube start
else
    echo "minikube ya se encuentra instalado en el sistema"
fi

curl --version | head -n 1 | awk '{print $1,$2}'
python3 --version
gpg --version | head -n 1
wget --version | head -n 1
git --version
docker -v
terraform -v | head -n 1
ansible --version | head -n 1
kubectl version --client
minikube version | head -n 1