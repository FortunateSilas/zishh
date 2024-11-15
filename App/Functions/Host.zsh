function Host() {

    

	# Selector
    local OPTION=${1}

    case "${OPTION}" in
		"Init" )
        # Host Initialize

			# Comment
			SOURCEFILE ${DATA_H} "Initialize"

		;;
		"Refresh" )
        # Host Refresh

			# Comment
			SOURCEFILE ${DATA_H} "Refresh"

		;;
		* )

        echo "You've entered the wrong option"
        echo "Try one of the following options:"
        echo "Init"
        echo "Refresh"

		;;
	esac

}