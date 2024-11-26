# Create Database
function database_create() {
    mysql -u root -p '' -e 'CREATE DATABASE '${1}';'
}

# Delete Database
function database_delete() {
    mysql -u root -p '' -e 'DROP DATABASE '${1}';'
}