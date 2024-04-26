#!/bin/sh

# Enable SSL if needed
if [[ "${SSL_ENABLE}" == "1" ]]; then
echo '$SERVER["socket"] == ":443" {'
echo ' ssl.engine = "enable"' 
echo ' ssl.pemfile = "/cert/'${SSL_CERT_NAME}'.crt"'
echo ' ssl.privkey = "/cert/'${SSL_CERT_NAME}'.key"'
echo '}'
fi

