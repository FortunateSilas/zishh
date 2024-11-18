function Wordpress() {

	# Selector
    local OPTION=${1}
    local DIR="${HOST_A}/Wordpress"

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else

		case "${OPTION}" in
			"Folder" )
			# Host Initialize

				# Comment
				xdg-open ${DIR}

			;;
			"Database" )
			# Host Refresh

				# Comment
				echo "Code for second option"

			;;
			* )

				echo "Your options are : [ 
				First | Second ] (* Edit)"

			;;
		esac
		
	fi

}