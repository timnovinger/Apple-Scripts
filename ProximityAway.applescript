tell application "System Events"
	set itunes_running to (exists process "iTunes")
end tell
if itunes_running is true then
	tell application "iTunes"
		pause
	end tell
end if

-- Set JackSMS status to on, which also lock the computer
tell application "JackSMS" to set jack status to "on"
delay 1

-- Set Skype status to away
tell application "System Events"
	set skype_running to (exists process "Skype")
end tell
if skype_running is true then
	tell application "Skype"
		send command "SET USERSTATUS AWAY" script name "AppleScript status setter"
	end tell
end if

-- Set Adium status to away
tell application "System Events"
	set adium_running to (exists process "Adium")
end tell
if adium_running then
	tell application "Adium" to go away with message "I am away from my computer"
end if