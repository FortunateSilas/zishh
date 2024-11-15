# Folder Create
function folder_create() {
    mkdir ${1}
}

# Folder Read
function folder_read() {
    # must get folder name
    # list items in the folder
    # get folder size
}

# Folder Edit
function folder_edit() {
    
    # Edit Folder
    mv "${1}" "${2}"
}

# File Open
function folder_open() {

    # Edit File
    nautilus .
}

# Folder Delete
function folder_delete() {

    # Delete folder
    trash ${1}
}

# Folder Enter
function folder_enter() {

    # Enter Folder
    cd ${1}
}

# Folder Exit
function folder_exit() {

    # Exit Folder
    cd ..
}