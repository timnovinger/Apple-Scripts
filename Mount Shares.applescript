set credentials to "USERNAME:PASSWORD"
set server to "SERVER ADDRESS"
tell application "Finder"
	try
		mount volume "afp://" & credentials & "@" & server & "/Share1"
	end try
	try
		mount volume "afp://" & credentials & "@" & server & "/Share2"
	end try
	try
		mount volume "afp://" & credentials & "@" & server & "/Share3"
	end try
end tell