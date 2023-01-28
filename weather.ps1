# A powershell script by SegamanXero to quickly pull up the weather via wttr.in by @igor_chubin.

param ($arg, $location='[replace this with your desired default location]')
if ($arg -eq $null) {
	$start='http://wttr.in/'
	$end='?format="%l:+%C+%t+%f"'
}
if ($arg -eq '--today') {
	$start='http://wttr.in/'
	$end='?1FAuq'
}
if ($arg -eq '--3day') {
	$start='http://wttr.in/'
	$end='?FAuq'
}
if ($arg -eq '--graph') {
	$start='http://v2d.wttr.in/'
	$end='?FAuq'
}
if ($arg -eq '--moon') {
	(Invoke-WebRequest http://wttr.in/moon?1auF -UserAgent "curl" ).Content
	exit
}
if ($arg -eq '--info') {
	(Invoke-WebRequest 'http://wttr.in/:help' -UserAgent "curl" ).Content
	exit
}
if ($arg -eq '--help') {
	write-host " |||||||||||||||||||||||||||||" -foregroundcolor darkcyan -nonewline
    write-host " Current Weather " -foregroundcolor black -backgroundcolor cyan -nonewline
	write-host "||||||||||||||||||||||||||||| " -foregroundcolor darkcyan
	write-host ""
	write-host "A powershell script to query the current weather via the http://wttr.in service by @igor_chubin."
	write-host ""
	write-host "Usage: weather --argument [location]" -foregroundcolor blue
	write-host ""
	write-host "Location can be formatted as City,'City+State', zipcode, or GPS coordinate."
	write-host "Use the --info argument and view the supported location type section for more info."
	write-host ""
	write-host "If no location is specified, the default location $location will be used."
	write-host "Available arguments are as follows..."
	write-host ""
	write-host "Argument                        Description" -foregroundcolor cyan
	write-host "-----------------------------------------------------------------------------" -foregroundcolor darkcyan
	write-host "no argument                     Single line weather for default location" -foregroundcolor blue
	write-host "--today                         Todays weather" -foregroundcolor blue
	write-host "--3day                          Today and the next two days" -foregroundcolor blue
	write-host "--graph                         Data-rich output format" -foregroundcolor blue
	write-host "--moon                          Current moon phase" -foregroundcolor blue
	write-host "--info                          Displays the services help page" -foregroundcolor blue
	exit
}
if ($end -ne $null) {
	$link=$start+$location+$end
}
if ($link -ne $null) {
	(Invoke-WebRequest -Uri $link -UserAgent "curl" ).Content
	exit
}
write-host "Command not recognized, script ended." -foregroundcolor red