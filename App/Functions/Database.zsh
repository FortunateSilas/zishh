function Database() {
    
	# Selector
    local OPTION=${1}
    local DBNAME=${2}

    if [ ! "${3}" ]; then

        RUNNING "${0} ${1} ${2}"

    else

        RUNNING "${0} ${1} ${2} ${3}"

    fi

    case $OPTION in
		"Create" )

			# Comment
			database_create "$DBNAME"

		;;
		"Delete" )

			# Comment
			database_delete "$DBNAME"

		;;
		"Export" )

			# Export database if it exist in mysql
			if [ -d "${MYSQL_DATABASES_PATH}/${2}" ]; then

				wp db export "./${2}.sql"

			else

				echo "Database does not exist..."

			fi

		;;
		"Import" )

			# Export database if it exist in mysql
			if [ ! -d "${MYSQL_DATABASES_PATH}/${2}" ]; then

				wp db import "./${2}.sql"

			else

				echo "Database exists..."

			fi

		;;
		* )

			echo "Your Folders are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}