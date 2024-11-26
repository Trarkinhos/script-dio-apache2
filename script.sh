#!/bin/bash

# Atualizando sistema
echo "Atualizando o sistema"
apt-get update
apt-get upgrade -y

# Instalando ambiente apache2 + unzip
echo "Instalando os pacotes necessários"
apt-get install apache2 -y
apt-get install unzip -y

# Download do projeto
echo "Baixando os arquivos do projeto"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

# Copiando o projeto para o apache2
echo "Enviando projeto para o ambiente apache2"
cp -R * /var/www/html/

echo "Script finalizado..."