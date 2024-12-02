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

			# Install Wordpress
            wordpress_core install --url="https://${2}.${VALET_DOMAIN}" --title="${2}" --admin_user="${USER_ADMIN}" --admin_email="${USER_EMAIL}" --admin_password="${USER_PASSWORD}" --skip-email
            echo "username : ${USER_ADMIN}"
            echo "password : ${USER_PASSWORD}"

		;;
		"Update" )

			# Update Wordpress
            wordpress_core update

		;;
		* )

			echo "You've entered the wrong option"
			echo "Try one of the following options:"
			echo "Download"

		;;
	esac

}