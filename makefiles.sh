

#make sure the input is within bounds
if [ "$1" -lt 1 ] || [ "$1" -gt 100 ]; then
echo "Error: input is out of bounds"
exit 1
fi

#create files subdirectory only if it doesn't already exist
mkdir -p files
cd files

#create specified number of files
for i in $(seq -w 0 $(( $1 - 1))); do
	random_content=$(openssl rand -base64 32)

	md5_hash=$(echo -n "$random_content" | md5_sum | cut -d ' ' -f 1)

	echo "$random_content" > "$md5_hash.txt"
done


backup_files() {
	timestamp=$(date + "%Y%m%d_%H%M%S")
	backup_file="backup/files_backup_$timestamp.tar.gz"
	mkdir -p backup
	tar -czf "$backup_file" files/
	echo "Backup created successfully: $Backup_file"
}
