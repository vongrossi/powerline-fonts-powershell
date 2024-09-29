<#
.SYNOPSIS
This script automates the process of downloading, extracting, installing, and cleaning up Powerline fonts from the official GitHub repository.

.DESCRIPTION
1. Downloads the Powerline fonts ZIP file from the official GitHub repository.
2. Extracts the contents of the ZIP file into the current directory.
3. Sets the execution policy to RemoteSigned, which is necessary to run the installation script.
4. Unblocks the installation script (install.ps1) to allow its execution.
5. Runs the installation script to install the fonts.
6. Cleans up by removing the extracted files and reverting to the previous directory.

.PARAMETERS
None.

.EXAMPLE
To run the script, simply execute it in a PowerShell terminal with appropriate permissions:

    .\install_fonts.ps1

.NOTES
- Make sure you have the necessary permissions to change the execution policy.
- The fonts are installed system-wide, and the script cleans up after installation.
- The script assumes it's running in a location where it can download files and modify execution policies.

#>

# Define the URL for the Powerline fonts ZIP file and the name of the target file
$zipUrl = "https://github.com/powerline/fonts/archive/refs/heads/master.zip"
$zipFile = "master.zip"
$extractFolder = "fonts-master"

# Step 1: Download the ZIP file containing the Powerline fonts
Invoke-WebRequest -Uri $zipUrl -OutFile $zipFile

# Step 2: Extract the ZIP file contents to the current directory
Expand-Archive -Path $zipFile -DestinationPath .

# Step 3: Remove the ZIP file after extraction
Remove-Item -Path $zipFile -Force

# Step 4: Navigate to the extracted directory
# The correct path is just one level deep after extraction (.\fonts-master\)
Set-Location -Path ".\fonts-master\"

# Step 5: Set execution policy to RemoteSigned to allow the execution of downloaded scripts
Set-ExecutionPolicy RemoteSigned -Scope Process -Force

# Step 6: Unblock the install.ps1 script to ensure it can be executed
Unblock-File -Path ".\install.ps1"

# Step 7: Run the install.ps1 script to install the Powerline fonts
.\install.ps1

# Step 8: Navigate back to the original directory and clean up the extracted files
Set-Location -Path ".."
Remove-Item -Recurse -Force $extractFolder

<#
.END

This script is a convenient way to automate the installation of Powerline fonts. It will ensure the system fonts are updated with the necessary Powerline fonts used for enhanced terminal displays.

For more information on Powerline fonts, visit the official repository at:
https://github.com/powerline/fonts

#>
