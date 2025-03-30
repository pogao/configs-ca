# configs-ca
Essas são as configurações que eu comento no vídeo de como configurar uma CA.

- `new_cert.sh`: Um shell-script bem simples pra automatizar a criação de novos certificados.
- `ocsp-responder-nginx.conf`: Cria um proxy-reverso usando NGINX pra ficar na frente do seu servidor OCSP.
- `ocsp-responder.service`: Cria uma unit do Sytemd pra você poder gerenciar o seu servidor OCSP como serviço do sistema.
- `openssl.cnf`: O arquivo de configuração do OpenSSL.
