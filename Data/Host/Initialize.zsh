Folder Enter ${HOME}

# Create Host
Folder Create ${HOST}

# Create Apps
Folder Create ${HOST_A}

# Create Blueprints
Folder Create ${HOST_B}

# Create Data
Folder Create ${HOST_D}

# Apps
# valet park

# Blueprints
# wordpress
# wpnormal
Folder Create ${HB_WPNORMAL}
Folder Enter ${HB_WPNORMAL}
# 

# wpbricks
# wpelementor


# Data


# Create Data Tools
Folder Create ${HOST_D_TOOLS}

# Create Data Folder
Folder Create ${HOST_DATA}
Folder Create ${HOST_DATA_A}
Folder Create ${HOST_DATA_F}
Folder Create ${HOST_DATA_T}

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