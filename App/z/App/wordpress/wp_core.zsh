
function GetCore() {

    echo "You have selected : Wordpress Core "
    echo "================================== "

    Folder Enter ${HBF_WPBPCORE}
    Database Export "${BPCORE}"

    shell_refresh
    shell_newline

    Folder Copy "${HBF_WPBPCORE}" "${HOST_A}/${1}"
    Folder Enter "${HOST_A}/${1}"
    
    shell_newline

    File Rename "${BPCORE}.sql" "${1}.sql"

    shell_refresh

    File FindReplace "${BPCORE}" "${1}" "${1}.sql"
    File FindReplace "${BPCORE:l}" "${1:l}" "${1}.sql"
    File FindReplace "${BPCORE:l}.${VALET_DOMAIN}" "${1}.${VALET_DOMAIN}" "${1}.sql"

    shell_refresh

}
