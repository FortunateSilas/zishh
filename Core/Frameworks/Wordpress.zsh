
case "${OPTION}" in
    "Folder" )

        # done
        Folder Open ${DIR}

    ;;
    "Browse" )

        # Upgrade
        valet open

    ;;
    "Update" )

        # Upgrade
        wp core update

    ;;
    "Database" )

        case "${2}" in
            "Export" )
                Database Export
            ;;
            "Import" )
                Database Export
            ;;
            * )
            ;;
        esac

    ;;
    "Plugin" )

        # Upgrade
        echo "This will manage single plugins and bundled plugins"

    ;;
    "Info" )

        # Upgrade
        echo "This will manage single plugins and bundled plugins"

    ;;
    * )

        echo "Your options are : [ 
        INIT | UPGRADE |  ]"

    ;;
esac