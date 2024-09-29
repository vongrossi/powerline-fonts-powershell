# Powerline Fonts Installer for Windows 10/11

This repository provides a PowerShell script to simplify the installation of Powerline fonts on Windows 10 and 11. Powerline fonts are commonly used to enhance the appearance of terminals by adding extra glyphs for status lines, prompts, and other interface elements.

## Script Objective

The goal of this script is to automate the process of downloading, extracting, installing, and cleaning up Powerline fonts. This is particularly useful for users who want a quick and easy way to install these fonts without needing to manually perform each step.

## How to Run the Script Remotely

You can run this PowerShell script directly from GitHub without needing to download it manually. Follow the steps below to execute the script remotely:

### Step 1: Open PowerShell as Administrator

Before running the script, make sure to open PowerShell with administrative privileges, as installing fonts system-wide may require elevated permissions.

### Step 2: Execute the Script Remotely

Use the following PowerShell command to download and execute the script directly from this repository:

```powershell
# URL of the PowerShell script on GitHub
$scriptUrl = "https://raw.githubusercontent.com/vongrossi/powerline-fonts-powershell/refs/heads/main/power-line-fonts.ps1"

# Download and execute the script directly from the URL
Invoke-WebRequest -Uri $scriptUrl -UseBasicParsing | Invoke-Expression
