Folder Enter ${HOME}

# Create Host
Folder Create ${HOST}

# Enter Host
# Folder Enter ${HOST}

# Create Apps
Folder Create ${HOST_A}

# Create _
Folder Create ${HOST_B}

# Enter _
# Folder Enter ${HOST_B}

# Create Frameworks
Folder Create ${HOST_B_FRAMEWORKS}

# Create Tools
Folder Create ${HOST_B_TOOLS}

# Create Tools
Folder Create ${HOST_B_DATA}

# Enter Frameworks
# Folder Enter ${HOST_B_FRAMEWORKS}

# Create Wordpress
Folder Copy ${HOME}/Downloads/wordpress ${HBF_WORDPRESS}

# Create Laravel
# Folder Create ${HBF_LARAVEL}
# Folder Enter ${HBF_LARAVEL}
# echo "valet link && valet secure"

# Create Blank
# Folder Create ${HBF_BLANK}
# Folder Enter ${HBF_BLANK}
# echo "valet link && valet secure"

# Enter Tools
# Folder Enter ${HOST_B_TOOLS}

# create phpMyAdmin
# Folder Create ${HBT_PHPMYADMIN}
# Folder Enter ${HBT_PHPMYADMIN}
# echo "valet link && valet secure"

# Enter Apps
Folder Enter ${HOST_A}

shell_pause
shell_pause

valet park