## Powerline Fonts Installer for Windows 10/11

This repository provides a PowerShell script to simplify the installation of [Powerline Fonts](https://github.com/powerline/fonts) on Windows 10 and 11. Powerline fonts are commonly used to enhance the appearance of terminals by adding extra glyphs for status lines, prompts, and other interface elements.

#### Script Objective

The goal of this script is to automate the process of downloading, extracting, installing, and cleaning up Powerline fonts. This is particularly useful for users who want a quick and easy way to install these fonts without needing to manually perform each step.

##### How to Run the Script Remotely

You can run this PowerShell script directly from GitHub without needing to download it manually. Follow the steps below to execute the script remotely:

##### Step 1: Open PowerShell as Administrator

Before running the script, make sure to open PowerShell with administrative privileges, as installing fonts system-wide may require elevated permissions.

##### Step 2: Execute the Script Remotely

Use the following PowerShell command to download and execute the script directly from this repository:

```powershell
# URL of the PowerShell script on GitHub
$scriptUrl = "https://raw.githubusercontent.com/vongrossi/powerline-fonts-powershell/refs/heads/main/power-line-fonts.ps1"

# Download and execute the script directly from the URL
Invoke-WebRequest -Uri $scriptUrl -UseBasicParsing | Invoke-Expression
```

#### Step 3: Enjoy Powerline Fonts in Your Terminal
After the script has completed, the Powerline fonts will be installed on your system and ready to use in your preferred terminal or text editor.

#### References

- [Official Powerline Fonts GitHub Repository](https://github.com/powerline/fonts)
- [Powerline Documentation](https://powerline.readthedocs.io/en/latest/)


#### Contributing

We encourage contributions to improve this script and expand its functionality! If you find any issues, have suggestions, or would like to add new features, feel free to:

1. Open a [GitHub issue](https://github.com/vongrossi/powerline-fonts-powershell/issues) to report bugs or propose new features.
2. Submit a pull request with improvements.

Some ways you can contribute:
- Add support for other operating systems (e.g., macOS or Linux).
- Improve error handling or user interaction.
- Optimize the script for different terminal configurations.
- Create tests for validation and improve code documentation.

We welcome all contributions and look forward to collaborating with the community!
