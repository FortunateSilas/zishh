# Create Database
function database_create() {
    mysql -u root -p '' -e 'CREATE DATABASE '${1}';'
}