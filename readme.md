### Created by Tovervlag, April 6 2021
# Please use at your own risk.

# With this you can create a backup of your Windows Valheim server.

# Description
This script basically consists of two parts.
1. The actual backup.
2. The cleanup of the backups.

# Running the script.
Manually: Right click and run with powershell.
Automatically: You might want to schedule it but it's still prompting for creating the archive so it might not work. I will test this in the near future.
               If you need this really badly and I haven't added to this yet, send me a message, I don't think it's a lot of work.

### variables
- $date                 = We need to get the date to create the filename.
- $keepamount           = This is the number of the amount of backups you want to keep.
- $backupsourcefolder   = This is the Valheim folder, we need to create a backup of this folder.
- $backupdestfolder     = This is the folder where the backups will be stored.
- $filename             = This is the created filename based on the name of the game, the date and the archive extension.
- $fulldestpath         = This is the $backupdestolder with the filename combined.
- $files                = This is the list of all the files in the $backupdestfolder.
- $actualamount         = This var has the count of all the files in the $backupdestfolder.
