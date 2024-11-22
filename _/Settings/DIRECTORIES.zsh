# Core
local CORE="${Z}/Core"
local CORE_F="${CORE}/Frameworks"
local CORE_S="${CORE}/Scripts"

# App
local APP="${Z}/App"
local APP_F="${APP}/Functions"
local APP_T="${APP}/Templates"

# zishh Data
# local zishh="${HOME}/zishh/App/Home"

# Data
local DATA="${Z}/Data"
local DATA_A="${DATA}/Apps"
local DATA_H="${DATA}/Host"

# Host
local HOST="${HOME}/Host"
local HOST_A="${HOME}/Host/Apps"
local HOST_B="${HOME}/Host/_"
local HOST_B_FRAMEWORKS="${HOME}/Host/_/Frameworks"
local HOST_B_TOOLS="${HOME}/Host/_/Tools"

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
# COMPILESCRIPTS $DATA_H HOST

echo "SOURCEFILE Works!!!"