function Wordpress() {

    

	# Selector
    local OPTION=${1}

    if [ ! "${2}" ]; then

        RUNNING "${0} ${1}"

    else

        RUNNING "${0} ${1} ${2}"

    fi

    case "${OPTION}" in
		"Download" )

            # Download Wordpress
            if [ ! "${2}" ]; then

                # Inside a directory
                wordpress_core download

            else

                # Outside a directory
                wordpress_core download ${2}

            fi

		;;
		"Install" )
        # Host Refresh

			# Comment

		;;
		* )

			echo "You've entered the wrong option"
			echo "Try one of the following options:"
			echo "Download"

		;;
	esac

}