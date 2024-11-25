
function app_wordpress() {

    # Copy Wordpress Folder
    Folder Copy "${HBF_WORDPRESS}" "${HOST_A}/${1}"
    File Copy "${APP_T}/Wordpress.zsh" "${HOST_A}/${1}"

}