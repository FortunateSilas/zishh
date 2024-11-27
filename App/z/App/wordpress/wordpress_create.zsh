function app_wordpress() {

    # create database
    Database Create ${1}

    # Copy Wordpress Folder
    Folder Copy "${HBF_WORDPRESS}" "${HOST_A}/${1}"

    # Copy Template
    File Copy "${AT_WORDPRESS}" "${HOST_DATA_A}/${1}.zsh"

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

    wp core install --url="https://${1}.${VALET_DOMAIN}" --title="${1}" --admin_user="${USER_ADMIN}" --admin_email="${USER_EMAIL}" --skip-email

    shell_refresh

}