# Set the path to your folder
$folderPath = "C:\Users\Dhara.Patel\_TKA_Projects\old_files"

# Calculate the date one month ago
$limitDate = (Get-Date).AddMonths(-1)

# Get the list of files older than one month
$oldFiles = Get-ChildItem -Path $folderPath | Where-Object { $_.CreationTime -lt $limitDate }

# Display the list of old files
Write-Host "Files older than one month:"
$oldFiles | ForEach-Object { Write-Host $_.FullName }

# Uncomment the next line to delete the old files
$oldFiles | ForEach-Object { Remove-Item $_.FullName -Force }
