
function GetElementor() {

    echo "You have selected : Wordpress Elementor "
    echo "================================== "

    Folder Enter ${HBF_WPBPELEMENTOR}
    Database Export "${BPELEMENTOR}"

    shell_refresh
    shell_newline

    Folder Copy "${HBF_WPBPELEMENTOR}" "${HOST_A}/${1}"
    Folder Enter "${HOST_A}/${1}"
    
    shell_newline

    File Rename "${BPELEMENTOR}.sql" "${1}.sql"

    shell_refresh

    File FindReplace "${BPELEMENTOR}" "${1}" "${1}.sql"
    File FindReplace "${BPELEMENTOR:l}" "${1:l}" "${1}.sql"
    File FindReplace "${BPELEMENTOR:l}.${VALET_DOMAIN}" "${1}.${VALET_DOMAIN}" "${1}.sql"

    shell_refresh

}
