#!/bin/bash

# Verifica se existe um nome para o certificado
if [ $# -ne 1 ]; then
    echo "Usage: $0 <certificate_name>"
    exit 1
fi

cert_name=$1

# Gera a chave privada
/usr/bin/openssl genrsa -out /home/pogo/myca/private/"$cert_name".key 4096

# Gera o CSR
/usr/bin/openssl req -config /home/pogo/openssl.cnf -new -sha256 -key /home/pogo/myca/private/"$cert_name".key -out /home/pogo/myca/reqs/"$cert_name".csr

# Assina o CSR
/usr/bin/openssl ca -config /home/pogo/openssl.cnf -extensions server_cert -days 375 -notext -md sha256 -in /home/pogo/myca/reqs/"$cert_name".csr -out /home/pogo/myca/certs/"$cert_name".crt
