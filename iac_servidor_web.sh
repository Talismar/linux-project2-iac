#!/bin/bash

# Atualizando pacotes do SO e baixando serviços

echo "Atualizando pacotes"
apt-get update
apt-get upgrade -y

echo "Baixando o apache2"
apt-get install apache2 -y

echo "Baixando o unzip"
apt-get install unzip -y

# Entrando dentro da pasta 
cd /tmp

# Baixando o repositório como zip
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactando o arquivo baixado
unzip main.zip

# Entrando na pasta do repositório
cd linux-site-dio-main

# Copiando o repositório para a pasta padrão do apache
cp -R * /var/www/html/

# Obtendo o IP da maquina

echo "Instalando o curl para obter o IP público"
sudo apt install curl -y

echo "Finalizado - Seu site já estar em PRODUÇÃO"
echo "Acesse pelo seu IP que é esse abaixo:"
curl ifconfig.me 
