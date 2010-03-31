-- Set Skype status to away
tell application "System Events"
	set skype_running to (exists process "Skype")
end tell
if skype_running is true then
	tell application "Skype"
		quit
	end tell
end if

-- Set Adium status to away
tell application "System Events"
	set adium_running to (exists process "Adium")
end tell
if adium_running then
	tell application "Adium"
		quit
	end tell
end if

tell application "Finder"
	try
		do shell script ("hdiutil unmount /Volumes/tnovinger -force")
	end try
end tell