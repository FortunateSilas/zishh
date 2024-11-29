echo "Enter your App/Website's name : "
echo "=============================== "
read APPNAME_INPUT

local APPNAME="${(C)APPNAME_INPUT}"

shell_clear

Folder Enter "${HOST_A}/"

shell_newline

echo "Deleting Database : "
echo "=================== "
Database Delete ${APPNAME}

shell_newline

echo "Deleting Website Folder/Files : "
echo "=============================== "
Folder Delete ${APPNAME}

shell_newline

echo "Deleting Data File : "
echo "==================== "
File Delete "${HOST_DATA_A}/${APPNAME}.zsh"

shell_newline

echo "Deleting Domain SSL certificates : "
echo "================================== "
File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.conf"
File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.crt"
File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.csr"
File Delete "${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.key"

shell_newline

echo "[${APPNAME}] Deleted Successfully."
shell_refresh