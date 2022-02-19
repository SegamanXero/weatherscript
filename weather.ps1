# A powershell script by SegamanXero to quickly pull up weather via powershell for some reason.

param ($arg)
if ($arg -eq $null) {
	(Invoke-WebRequest 'http://wttr.in/42.367,-71.059?1FAuq' -UserAgent "curl" ).Content
}
if ($arg -eq '--moon') {
	(Invoke-WebRequest http://wttr.in/moon?1auF -UserAgent "curl" ).Content
}
if ($arg -eq '--graph') {
	(Invoke-WebRequest 'http://v2d.wttr.in/42.367,-71.059?FAuq' -UserAgent "curl" ).Content
}
if ($arg -eq '--3day') {
	(Invoke-WebRequest 'http://wttr.in/42.367,-71.059?FAuq' -UserAgent "curl" ).Content
}
if ($arg -eq '--map') {
	#(Invoke-WebRequest 'http://v3.wttr.in/42.367,-71.059?1FAuq' -UserAgent "curl" ).Content
	echo "This function is currently not supported."
}
if ($arg -eq '--info') {
	(Invoke-WebRequest 'http://wttr.in/:help' -UserAgent "curl" ).Content
}
if ($arg -eq '--help') {
	write-host "||||||||||||||||||||||||||| Current Weather |||||||||||||||||||||||||||"
	write-host ""
	write-host "A powershell script to get current weather via the wttr service."
	write-host "Usage: weather --argument"
	write-host ""
	write-host "location is currently hardcoded to North End/Strada via GPS location of 42.367,-71.059"
	write-host "Available arguments are as follows..."
	write-host ""
	write-host "Argument                        Description"
	write-host "-----------------------------------------------------------------------------"
	write-host "no argument                     Current day weather"
	write-host "--3day                          Today and the next two days"
	write-host "--graph                         Data-rich output format"
	write-host "--map                           Weather map"
	write-host "--info                          Displays the services help page"
}