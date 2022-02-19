# weatherscript
A powershell script that pulls current weather from the wttr service for my personal use.

# Usage/Installation

Current usage: script --option

binding this to your powershell profile with a line "Set-Alias weather '-path\weather.ps1'" is recomended. Does not seem to work when 'powershell.ps1' is called upon directly. Maybe this is because I bound it in profile?

Use the --help option in powershell or view the section where --help is triggered in the script to see available arguments.

# Todo
Add a location argument that merges user defined location or none selected a hardcoded location into the url that is sent to the service.
