function Zeesh() {

    

	# Selector
    local OPTION=${1}

    case "${OPTION}" in
		"Create" )
        # Host Initialize

			# Comment
			. "${ZEESH}"

		;;
		"Refresh" )
        # Host Refresh

			# Comment
			echo "Code for second option"

		;;
		* )

			echo "Your options are : [ 
			First | Second ] (* Edit)"

		;;
	esac

}