# weatherscript
A powershell script that pulls current weather from the wttr.in service by @igor_chubin.

# Prerequisites

You will need Powershell to use this. Powershell can be downloaded for Windows, Linux, and MacOS here https://github.com/PowerShell/PowerShell.

The --Graph function requires a nerd font, which one can be downloaded here https://www.nerdfonts.com/font-downloads.

# Usage/Installation

Before use of the script, at line 3 delete [replace this with your desired default location] and replace with a desired default location within the single quotes.
See "Supported location types" section at https://wttr.in/:help for location formatting.

Usage: weather.ps1 --option location / weather.ps1 --option / weather.ps1

Use the --help option in powershell or view the section where --help is triggered in the script to see available arguments.

# Todo
Add more features as wttr service evolves.
