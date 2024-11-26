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

echo "Removing Domain SSL certificates"

File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.conf"
File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.crt"
File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.csr"
File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.key"
