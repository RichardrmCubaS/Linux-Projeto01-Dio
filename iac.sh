#!/bin/bash

echo "Criando os diretórios..."

mkdir /publico
mkdir /Compras
mkdir /Estoque
mkdir /Vendas

echo "Criando os grupos de usuários..."

groupadd GRP_COM
groupadd GRP_EST
groupadd GRP_VEN

echo "Criando Os usuários..."

useradd Compras01 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COM
useradd Compras02 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COM
useradd Compras03 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COM

useradd Estoque01 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_EST
useradd Estoque02 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_EST
useradd Estoque03 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_EST

useradd Vendas01 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Vendas02 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Vendas03 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Especificando das permissões dos diretórios...."

chown root:GRP_COM /Compras
chown root:GRP_EST /Estoque
chown root:GRP_VEN /Vendas

chmod 770 /Compras
chmod 770 /Estoque
chmod 770 /Vendas
chmod 777 /publico

echo "Fim....."