# user input : project name
echo "Enter your App/Website's name : "
echo "=============================== "

shell_newline

read APPNAME_INPUT

local APPNAME="${(C)APPNAME_INPUT}"

echo "You typed : ${APPNAME}"

shell_newline

# cd apps
Folder Enter ${HOST_A}

shell_newline

# user input : select framework
echo "Available Frameworks : "
echo "====================== "

shell_newline

echo "1. Blank"
echo "2. Wordpress"

shell_newline

echo "Select Framework by Typing Number : "
echo "=================================== "

shell_newline

read APPFRAMEWORK_INPUT

local APPFRAMEWORK="${APPFRAMEWORK_INPUT}"

shell_clear

case "${APPFRAMEWORK}" in
    "1" )
        echo "You have selected : Blank "
        echo "========================= "

        shell_newline
    ;;
    "2" )

        echo "You have selected : WordPress "
        echo "============================= "

        shell_newline

        # copy bin/framework to apps/project
        app_wordpress ${APPNAME}

    ;;
    * )
        echo "Select a framework by typing a number : "
        echo "======================================= "

        shell_newline

        echo "1. Blank"
        echo "2. Wordpress"
    ;;
esac

shell_newline

# generate ssl
valet secure

# Refresh Shell
shell_refresh