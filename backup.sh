# timestamp
timestamp=$( date +%Y-%m-%d-%H-%M-%S )

# variables for mysqldump
host="host"
user="user"
port="3306"
database="database"
# dump database
mysqldump -h $host -u $user -p -P $port --databases $database > $database-$timestamp.sql

# variables for zip project folder
projectFolder="projectfolder"
# archive project folder
zip -r $projectFolder-$timestamp.zip $projectFolder
