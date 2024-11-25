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
local AT_LARAVEL="${HOME}/zishh/App/Templates/Laravel.zsh"

# zishh Data
# local zishh="${HOME}/zishh/App/Home"

# Data
local DATA="${HOME}/zishh/Data"
local DATA_A="${HOME}/Host/_/Apps"
local DATA_H="${HOME}/zishh/Data/Host"

# Host
local HOST="${HOME}/Host"
local HOST_A="${HOME}/Host/Apps"
local HOST_B="${HOME}/Host/_"

# App Frameworks
local HOST_B_FRAMEWORKS="${HOME}/Host/_/Frameworks"
local HBF_WORDPRESS="${HOME}/Host/_/Frameworks/Wordpress"
local HBF_LARAVEL="${HOME}/Host/_/Frameworks/Laravel"
local HBF_BLANK="${HOME}/Host/_/Frameworks/Blank"

# Tools
local HOST_B_TOOLS="${HOME}/Host/_/Tools"
local HBT_PHPMYADMIN="${HOME}/Host/_/Tools/phpMyAdmin"

# Tools
local HOST_B_DATA="${DATA_A}"

function COMPILESCRIPTS() {


    # Specify the directory containing the .zsh files
    local DIR="${1}"

    # Specify the output file
    local FILE="${SETTINGS}/${2}.zsh"

    # Reset CORE.zsh
    echo -n > ${FILE}

    # sleep 1

    # Loop through each .zsh file in the DIR
    for file in "$DIR"/*; do
        # Check if the file exists and is readable
        if [ -r "$file" ]; then
            # Append the source command to the output file
            echo "source \"$file\"" >> "$FILE"
        fi
    done
}

# Get Core Scripts
COMPILESCRIPTS $CORE_S CORE_SCRIPTS
COMPILESCRIPTS $CORE_F CORE_FRAMEWORKS

# Get App Functions
COMPILESCRIPTS $APP_F FUNCTIONS

# Get Apps & Apps
COMPILESCRIPTS $DATA_A APPS