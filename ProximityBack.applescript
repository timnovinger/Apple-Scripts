-- Pause iTunes (might add in fancy fade later)
tell application "System Events"
	set itunes_running to (exists process "iTunes")
end tell
if itunes_running is true then
	tell application "iTunes"
		play
	end tell
end if

-- Set JackSMS status to off, which also lock the computer
tell application "JackSMS" to set jack status to "off"
delay 1

-- Set Skype status to away
tell application "System Events"
	set skype_running to (exists process "Skype")
end tell
if skype_running is true then
	tell application "Skype"
		send command "SET USERSTATUS ONLINE" script name "AppleScript status setter"
	end tell
end if

-- Set Adium status to back
tell application "System Events"
	set adium_running to (exists process "Adium")
end tell
if adium_running then
	tell application "Adium" to go available
end if