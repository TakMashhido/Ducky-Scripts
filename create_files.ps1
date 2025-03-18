# Define the number of files to create
$numberOfFiles = 10

# Define the size of each file in bytes (5 GB = 5368709120 bytes)
$fileSize = 5368709120

# Loop to create files
for ($i = 0; $i -lt $numberOfFiles; $i++) {
    # Generate a random file name
    $randomName = -join ((65..90) + (97..122) | Get-Random -Count 10 | ForEach-Object { [char]$_ })
    
    # Create a new file
    fsutil file createnew "C:\$randomName.txt" $fileSize
}
