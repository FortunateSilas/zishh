echo "Enter your App/Website's name: "
read APPNAME_INPUT

local APPNAME="${(C)APPNAME_INPUT}"

Folder Enter "${HOST_A}/"

echo "Removing Database: ${APPNAME}"
Database Delete ${APPNAME}

echo "Removing Website Folder/Files : Host/Apps/${APPNAME}"
Folder Delete ${APPNAME}

echo "Removing Data File : Host/_/Data/${APPNAME}.zsh"
File Delete ${APPNAME}

echo "Removing Domain from valet : ${APPNAME}"

echo "Removing Domain SSL certificates"

File Delete "${SSL_FOLDER}/${APPNAME}.${DOMAIN}.conf"
File Delete "${SSL_FOLDER}/${APPNAME}.${DOMAIN}.crt"
File Delete "${SSL_FOLDER}/${APPNAME}.${DOMAIN}.csr"
File Delete "${SSL_FOLDER}/${APPNAME}.${DOMAIN}.key"
