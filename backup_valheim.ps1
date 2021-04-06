### Created by Tovervlag, April 6 2021
# Please use at your own risk.

# This line gets the time in the specified format.
$date = Get-Date -Format yyyy-mm-dd_hh.mm

# This line states howmany backup files you want to keep.
# It will delete the oldest ones if the folder has more than 10 files.
$keepamount = 10

# This line defines of which folder the backup is created. Replace 'user' with your username.
$backupsourcefolder = "c:\users\'user'\appdata\LocalLow\IronGate\Valheim"

# This line specifies where the backup is placed. Replace 'user' with your username.
$backupdestfolder = "c:\users\'user'\Desktop\Valheim"

# This line states the filename format
$filename = 'valheim_' + $date + '.zip'

# This line combines the destination path and the filename for the compress-archive command
$fulldestpath = "$backupdestfolder\$filename"

# this is the actual command that compresses the seelected folder and places it in the selected destination folder as a zip file.
Compress-Archive -path $backupsourcefolder -force -DestinationPath $fulldestpath

# This line lists all the files in the $backupdestfolder
$files = Get-ChildItem -Path $backupdestfolder

# Counts the amount of files in the $backupdestfolder
$actualamount = $files.count

# Deletes the oldest files and keeps the newest $keepamount.
# Only executes if there are more files than $keepamount.
if ($files.count -gt $keepamount) {
  $files | Sort-Object CreationTime | Select-Object -First ($files.count - $keepamount) | Remove-Item -force
}
