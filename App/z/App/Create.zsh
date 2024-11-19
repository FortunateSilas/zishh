# user input : project name
read APPNAME_INPUT

echo "You typed : ${(C)APPNAME_INPUT}"

local APPNAME="${APPNAME_INPUT}"

# cd apps
Folder Enter ${HOST_A}

# user input : select framework
echo "Select Framework: "
echo "1. Blank"
echo "2. Wordpress"
echo "3. Laravel"
echo "\n"
read APPFRAMEWORK_INPUT

local APPFRAMEWORK="${APPFRAMEWORK_INPUT}"

case "${APPFRAMEWORK}" in
    "1" )
        echo "Blank"
    ;;
    "2" )
        echo "WordPress"
    ;;
    "3" )
        echo "Laravel"
    ;;
    * )
        echo "Select a framework by typing a number."
    ;;
esac

# copy bin/framework to apps/project
# copy templates/framework to apps/project
# edit 
# cd apps/project
# generate ssl
# create database 