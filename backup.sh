# variables for mysqldump
host="host"
user="user"
port="port"
database="database"
# dump database
mysqldump -h $host -u $user -p -P $port --databases $database > $database.sql

# variables for zip project folder
projectFolder="projectfolder"
# archive project folder
zip -r $projectFolder.zip $projectFolder
