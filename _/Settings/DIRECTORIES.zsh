# Core
local CORE="${HOME}/zishh/Core"
local CORE_F="${HOME}/zishh/Core/Frameworks"
local CORE_S="${HOME}/zishh/Core/Scripts"

# App
local APP="${HOME}/zishh/App"
local APP_F="${HOME}/zishh/App/Functions"

# App Templates
local AT_WORDPRESS="${HOME}/zishh/App/Templates/Wordpress.zsh"
local AT_BLANK="${HOME}/zishh/App/Templates/Blank.zsh"

# zishh Data
# local zishh="${HOME}/zishh/App/Home"

# Data
local DATA="${HOME}/zishh/Data"
local DATA_H="${HOME}/zishh/Data/Host"

# Host
local HOST="${HOME}/Host"
local HOST_A="${HOME}/Host/Apps"
local HOST_B="${HOME}/Host/Blueprints"
local HOST_D="${HOME}/Host/_Data"

# App Blueprints

# Wordpress Blueprints

# WPNORMAL
local WPNORMAL="WPNORMAL"
local HB_WPNORMAL="${HOME}/Host/Blueprints/Wordpress/${WPNORMAL}"

# WPBRICKS
local WPNORMAL="WPBRICKS"
local HB_WPBRICKS="${HOME}/Host/Blueprints/Wordpress/${WPBRICKS}"

# WPELEMENTOR
local WPELEMENTOR="WPELEMENTOR"
local HB_WPELEMENTOR="${HOME}/Host/Blueprints/Wordpress/${WPELEMENTOR}"

# Laravel Blueprints
local HBF_LARAVEL="${HOME}/Host/Blueprints/Laravel"
local HB_BLANK="${HOME}/Host/Blueprints/Blank"

# Data
local HOST_D_TOOLS="${HOME}/Host/_Data/Tools"
local HDT_PHPMYADMIN="${HOME}/Host/_Data/Tools/phpMyAdmin"

# Tools
local HOST_DATA="${HOME}/Host/_/Data"
local HOST_DATA_A="${HOME}/Host/_/Data/Apps"
local HOST_DATA_T="${HOME}/Host/_/Data/Tools"
local HOST_DATA_F="${HOME}/Host/_/Data/Frameworks"

# User Variables
local HOST_DATA_U="${HOME}/Host/_/Data/User.zsh"

function COMPILECONFIGS() {


    # Specify the directory containing the .zsh files
    local DIR="${1}"

    # Specify the output file
    local FILE="${SETTINGS}/${2}.zsh"

    # Reset CORE.zsh
    echo -n > ${FILE}

    sleep 1

    if [ -n "$(ls -A ${DIR})" ]; then

        # Loop through each .zsh file in the DIR
        for file in "$DIR"/*; do
            # Check if the file exists and is readable
            if [ -r "$file" ]; then
                # Append the source command to the output file
                echo "source \"$file\"" >> "$FILE"
            fi
        done
    fi
}

function COMPILEAPPS() {


    # Specify the directory containing the .zsh files
    local DIR="${1}"

    # Specify the output file
    local FILE="${HOST_DATA}/APPS.zsh"

    # Reset CORE.zsh
    echo -n > ${FILE}

    sleep 1

    if [ -n "$(ls -A ${DIR})" ]; then

        # Loop through each .zsh file in the DIR
        for file in "$DIR"/*; do
            # Check if the file exists and is readable
            if [ -r "$file" ]; then
                # Append the source command to the output file
                echo "source \"$file\"" >> "$FILE"
            fi
        done
    fi
}

# Get Core Scripts
COMPILECONFIGS $CORE_S CORE_SCRIPTS
# COMPILECONFIGS $CORE_F CORE_FRAMEWORKS

# Get App Functions
COMPILECONFIGS $APP_F FUNCTIONS

# Get Apps & Apps
COMPILEAPPS $HOST_DATA_A