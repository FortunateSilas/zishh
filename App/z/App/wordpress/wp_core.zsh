
function GetCore() {

    echo "You have selected : Wordpress Core "
    echo "=================================== "

    Folder Enter ${HBF_WPCORE}
    Database Export "Core"

    shell_refresh
    shell_newline

    Folder Copy "${HBF_WPCORE}" "${HOST_A}/${1}"
    Folder Enter "${HOST_A}/${1}"
    
    shell_newline

    File Rename "Core.sql" "${1}.sql"

    shell_refresh

    File FindReplace "Core" "${1}" "${1}.sql"
    File FindReplace "core.${VALET_DOMAIN}" "${1}.${VALET_DOMAIN}" "${1}.sql"

    shell_refresh

    Database Import "${1}"

}
