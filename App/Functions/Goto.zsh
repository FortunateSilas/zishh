function Goto() {

	# Selector
    local OPTION=${1}

    if [ ! "${2}" ]; then

        RUNNING "File ${1}"

    else

        RUNNING "File ${1} ${2}"

    fi

    case "${OPTION}" in
		"Host" )

			# Comment
			Folder Enter $HOST

		;;
		"Apps" )

			# Comment
			Folder Enter $APPS

		;;
		* )

			echo "Your options are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}