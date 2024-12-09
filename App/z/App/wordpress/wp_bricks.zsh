
function GetBricks() {

    echo "You have selected : Wordpress Bricks "
    echo "==================================== "

    Folder Enter ${HBF_WPBPBRICKS}
    Database Export "${BPBRICKS}"

    shell_refresh
    shell_newline

    Folder Copy "${HBF_WPBPBRICKS}" "${HOST_A}/${1}"
    Folder Enter "${HOST_A}/${1}"
    
    shell_newline

    File Rename "${BPBRICKS}.sql" "${1}.sql"

    shell_refresh

    Database Import ${1}

    shell_refresh

    # File FindReplace "${BPBRICKS}" "${1}" "${1}.sql"
    # File FindReplace "${BPBRICKS:l}" "${1:l}" "${1}.sql"
    # File FindReplace "${BPBRICKS:l}.${VALET_DOMAIN}" "${1}.${VALET_DOMAIN}" "${1}.sql"

    wp search-replace "${BPBRICKS}" "${1:l}" --all-tables
    wp search-replace "${BPBRICKS:l}" "${1:l}" --all-tables
    wp search-replace "${BPBRICKS:l}.${VALET_DOMAIN}" "${1}.${VALET_DOMAIN}" --all-tables


    shell_refresh

}
