# user input : project name
echo "Enter your App/Website's name: "
read APPNAME_INPUT

local APPNAME="${(C)APPNAME_INPUT}"

echo "You typed : ${APPNAME}"

shell_newline

# cd apps
Folder Enter ${HOST_A}

shell_newline

# user input : select framework
echo "Available Frameworks: "
echo "1. Blank"
echo "2. Wordpress"
echo "3. Laravel"

shell_newline

echo "Select Framework by Typing Number: "
read APPFRAMEWORK_INPUT

local APPFRAMEWORK="${APPFRAMEWORK_INPUT}"

case "${APPFRAMEWORK}" in
    "1" )
        echo "You have selected : Blank"
    ;;
    "2" )

        echo "You have selected : WordPress"

        # copy bin/framework to apps/project
        app_wordpress ${APPNAME}

    ;;
    "3" )
        echo "You have selected : Laravel"
    ;;
    * )
        echo "Select a framework by typing a number."
    ;;
esac

# cd apps/project
Folder Enter ${HOST_A}/${APPNAME}

# generate ssl
valet secure
