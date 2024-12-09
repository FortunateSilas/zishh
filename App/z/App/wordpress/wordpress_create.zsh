function app_wordpress() {

    # Copy Data File
    File Copy "${AT_WORDPRESS}" "$HOST_DATA_A/${1}.zsh"
    shell_newline

    # user input : select framework
    echo "Choose Blueprint : "
    echo "================== "

    echo "1. WP Core"
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

            . "${HOME}/zishh/App/z/App/wordpress/wp_core.zsh"
            GetCore ${1}
        ;;
        "2" )

            . "${HOME}/zishh/App/z/App/wordpress/wp_bricks.zsh"
            GetBricks ${1}

        ;;
        "3" )

            . "${HOME}/zishh/App/z/App/wordpress/wp_elementor.zsh"
            GetElementor ${1}

        ;;
        * )
            echo "Select a Blueprint by typing a number."
        ;;
    esac

    shell_refresh

    File Delete "${HOST_A}/${1}/wp-config.php"
    File Rename "${HOST_A}/${1}/wp-config-sample.php" "${HOST_A}/${1}/wp-config.php"

    shell_newline

    # create database
    # Database Create ${1}

    shell_pause
    shell_newline

    echo "Updating WP-Config file : "
    echo "========================= "

    # Change mysql name
    sed_find_replace "define( 'DB_NAME', 'database_name_here' );" "define( 'DB_NAME', '${1}' );" "${HOST_A}/${1}/wp-config.php"

    # Change mysql user
    sed_find_replace "define( 'DB_USER', 'username_here' );" "define( 'DB_USER', '${MYSQL_USERNAME}' );" "${HOST_A}/${1}/wp-config.php"

    # Change mysql password
    sed_find_replace "define( 'DB_PASSWORD', 'password_here' );" "define( 'DB_PASSWORD', '${MYSQL_PASSWORD}' );" "${HOST_A}/${1}/wp-config.php"

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
    Folder Enter ${HOST_A}/${1}
    
    shell_pause
    shell_newline

    echo "Wordpress Installed : "
    echo "DO NOT FORGET TO COPY YOUR WP-ADMIN PASSWORD "
    echo "============================================ "

    # wp core install
    # Wordpress Install

    # wp core install --url="https://${1}.${VALET_DOMAIN}" --title="${1}" --admin_user="${USER_ADMIN}" --admin_email="${USER_EMAIL}" --admin_password="${USER_PASSWORD}" --skip-email

    shell_newline

    echo "Username & Password : "
    echo "===================== "
    echo "username : ${USER_ADMIN}"
    echo "password : ${USER_PASSWORD}"

    shell_newline
    shell_refresh

}