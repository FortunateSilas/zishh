function app_wordpress() {

    # Choose Blueprint
    shell_newline

    # user input : select framework
    echo "Choose Blueprint : "
    echo "================== "

    echo "1. WP Clean"
    echo "2. WP Bricks"
    echo "3. WP Elementor"

    shell_newline

    echo "Select Blueprint by Typing Number : "
    echo "================================== "
    read BLUEPRINT_INPUT

    local BLUEPRINT="${BLUEPRINT_INPUT}"

    shell_clear

    case "${BLUEPRINT}" in
        "1" )
            echo "You have selected : Wordpress Clean "
            echo "=================================== "
            Folder Copy "${HBF_WPCORE}" "${HOST_A}/${1}"
        ;;
        "2" )

            echo "You have selected : WordPress Bricks "
            echo "==================================== "
            Folder Copy "${HBF_WPBRICKS}" "${HOST_A}/${1}"

        ;;
        "3" )

            echo "You have selected : WordPress Elementor "
            echo "======================================= "
            Folder Copy "${HBF_WPELEMENTOR}" "${HOST_A}/${1}"

        ;;
        * )
            echo "Select a Blueprint by typing a number."
        ;;
    esac

    shell_newline

    # create database
    Database Create ${1}

    shell_pause
    shell_newline

    echo "Updating WP-Config file : "
    echo "========================= "

    # Change mysql name
    sed_find_replace "define( 'DB_NAME', 'database_name_here' );" "define( 'DB_NAME', '${1}' );" "${HOST_A}/${1}/wp-config.php"

    # Change mysql user
    sed_find_replace "define( 'DB_USER', 'username_here' );" "define( 'DB_USER', 'root' );" "${HOST_A}/${1}/wp-config.php"

    # Change mysql password
    sed_find_replace "define( 'DB_PASSWORD', 'password_here' );" "define( 'DB_PASSWORD', '' );" "${HOST_A}/${1}/wp-config.php"

    shell_newline

    echo "Updating Data file : "
    echo "==================== "

    sed_find_replace 'function Wordpress() {' "function ${1}() {" "${HOST_DATA_A}/${1}.zsh"
    sed_find_replace 'APPNAME="APPNAME"' "APPNAME='${1}'" "${HOST_DATA_A}/${1}.zsh"

    sed_find_replace 'FRAMEWORK="FRAMEWORK"' 'FRAMEWORK="Wordpress"' "${HOST_DATA_A}/${1}.zsh"

    sed_find_replace 'DBNAME="DBNAME"' "DBNAME='${1}'" "${HOST_DATA_A}/${1}.zsh"

    sed_find_replace 'DBUSER="DBUSER"' 'DBHOST="root"' "${HOST_DATA_A}/${1}.zsh"

    sed_find_replace 'DBPASS="DBPASS"' 'DBPASS=""' "${HOST_DATA_A}/${1}.zsh"

    sed_find_replace 'local DIR="${HOST_A}/Wordpress"' "local DIR="${HOST_A}/${1}"" "${HOST_DATA_A}/${1}.zsh"

    # cd apps/project
    Folder Enter ${HOST_A}/${APPNAME}
    
    shell_pause
    shell_newline

    echo "Installing Wordpress : "
    echo "DO NOT FORGET TO COPY YOUR WP-ADMIN PASSWORD "
    echo "============================================ "

    # wp core install
    WordPress Install ${APPNAME}

    shell_refresh

}