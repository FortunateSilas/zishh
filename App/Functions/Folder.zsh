function Folder() {
    
	# Selector
    local OPTION=${1}
    local FOLDER=${2}

    if [ ! "${3}" ]; then

        RUNNING "Folder ${1} ${2}"

    else

        RUNNING "Folder ${1} ${2} ${3}"

    fi

    case $OPTION in
		"Create" )

			# Comment
			folder_create "$FOLDER"

		;;
		"Read" )

			# Comment
			folder_read $FOLDER

		;;
		"Open" )

			# Comment
			folder_open

		;;
		"Edit" )

			# Comment
			folder_edit $FOLDER

		;;
		"Delete" )

			# Comment
			folder_delete $FOLDER

		;;
		"Enter" )

			# Comment
			folder_enter $FOLDER

		;;
		"Exit" )

			# Comment
			folder_exit 

		;;
		"Copy" )

			# Comment
			folder_copy ${2} ${3}

		;;
		"Move" )

			# Comment
			folder_exit 

		;;
		* )

			echo "Your Folders are : [ 
			First | Second ] (* Edit)"

		;;
	esac

}