tell application "Skype"
	run
end tell

tell application "Adium"
	run
end tell

set credentials to "USERNAME:PASSWORD"
set server to "SERVER ADDRESS"

tell application "Finder"
	try
		mount volume "afp://" & credentials & "@" & server & "/share"
	end try
end tell