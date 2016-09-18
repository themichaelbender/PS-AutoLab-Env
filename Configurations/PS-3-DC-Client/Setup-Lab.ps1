﻿# Run the config to generate the .mof files
.\TestLab.ps1

# Build the lab without a snapshot
#
Write-Warning @" 
    
    If this is hte first time you have run this setip, this can take several hours.
    The intial setup will download required .IOS's and DSCResources.
    
    You will be able to wipe and rebuild this lab without needing to perform
    the downloads again.
"@
Start-Sleep 5

# Creates the lab environement without making a Hyper Snapshot
Start-LabConfiguration -ConfigurationData .\TestLab.psd1 -Verbose -path .\ -NoSnapshot



