
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

    File FindReplace "BpBricks" "${1}" "${1}.sql"
    File FindReplace "bpbricks.${VALET_DOMAIN}" "${1}.${VALET_DOMAIN}" "${1}.sql"

    shell_refresh

}
