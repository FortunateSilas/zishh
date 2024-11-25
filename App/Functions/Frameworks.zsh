function app_wordpress() {

    # create database
    Database Create ${1}

    # Copy Wordpress Folder
    Folder Copy "${HBF_WORDPRESS}" "${HOST_A}/${1}"

    # Copy Template
    File Copy "${AT_WORDPRESS}" "${DATA_A}/${1}.zsh"

    shell_pause

    # Change mysql name
    sed_find_replace "define( 'DB_NAME', 'database_name_here' );" "define( 'DB_NAME', '${1}' );" "${HOST_A}/${1}/wp-config.php"

    # Change mysql user
    sed_find_replace "define( 'DB_USER', 'username_here' );" "define( 'DB_USER', 'root' );" "${HOST_A}/${1}/wp-config.php"

    # Change mysql password
    sed_find_replace "define( 'DB_PASSWORD', 'password_here' );" "define( 'DB_PASSWORD', '' );" "${HOST_A}/${1}/wp-config.php"

    sed_find_replace 'function Wordpress() {' "function ${1}() {" "${DATA_A}/${1}.zsh"
    sed_find_replace 'APPNAME="APPNAME"' "APPNAME='${1}'" "${DATA_A}/${1}.zsh"

    sed_find_replace 'FRAMEWORK="FRAMEWORK"' 'FRAMEWORK="Wordpress"' "${DATA_A}/${1}.zsh"

    sed_find_replace 'DBNAME="DBNAME"' "DBNAME='${1}'" "${DATA_A}/${1}.zsh"

    sed_find_replace 'DBHOST="DBHOST"' 'DBHOST="root"' "${DATA_A}/${1}.zsh"

    sed_find_replace 'DBPASS="DBPASS"' 'DBPASS=""' "${DATA_A}/${1}.zsh"

}