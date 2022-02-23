## Generate RSA key (1024 bits)

## AT /sslkey/test.key
sudo openssl genrsa -out servercert.key 1024
sudo openssl req -new -key servercert.key -out servercert.csr
## Code generation
# FR
# LYON
# SUPINFO
# IT
# server-001
# nathan.rodet@supinfo.com

test

sudo openssl x509 -in servercert.csr -out servercert.crt -req -signkey servercert.key
sudo openssl x509 -in servercert.crt -out servercert.pem -outform PEM