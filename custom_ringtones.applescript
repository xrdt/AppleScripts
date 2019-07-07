-- Create custom ringtones from iTunes songs 

-- Get the user's desired source song 
tell application "Finder"
	set home_path to home
	set home_path to name of home_path
	set tonesPath to "Macintosh HD:Users:" & home_path & ":Music:iTunes:iTunes Media:Tones"
	set tonesFullPath to "Macintosh HD:Users:" & home_path & ":Music:iTunes:iTunes Media:Tones:"
	set tonesParentPath to "Macintosh HD:Users:" & home_path & ":Music:iTunes:iTunes Media"
	if exists folder tonesPath then
	else
		make new folder at folder tonesParentPath with properties {name:"Tones"}
	end if
end tell

set tonesPath to "/Macintosh HD/Users/" & home_path & "/Music/iTunes/iTunes Media/Tones"

tell application "iTunes"
	activate
	set allSongs to {}
	set results to (every track of playlist "Music")
	repeat with result in results
		set end of allSongs to name of result
	end repeat
	set the songChoice to choose from list allSongs with prompt "Choose song to create ringtone from"
	set songChoice to first item of songChoice
	play track songChoice of playlist "Music"
	pause
	
	set songLength to (get time of current track)
	songLength
	set songPath to (get location of current track)
	
	set starttime to "1:10"
	set endtime to "1:11"
	-- determine the chunk of song the user wants to use by playing back the chosen time frame
	repeat while true
		-- cannot create multiple input boxes per dialog 
		set songTimes to text returned of (display dialog "Choose start and end times" & return & return & "Enter the times in MM:SS format & separate them with a comma. For example: 1:10,2:15" & return & return & "You can specify a range up to 35 seconds long. The script will constrain the range you choose if necessary." default answer starttime & "," & endtime)
		
		set AppleScript's text item delimiters to ","
		set splitTimes to every text item of songTimes
		if (count of splitTimes) is not equal to 2 then
			display alert "did not enter valid times. Exiting"
			error number -128
		end if
		set starttime to first item of splitTimes
		set endtime to second item of splitTimes
		set AppleScript's text item delimiters to ":"
		set startmin to first text item of starttime
		set startsec to second text item of starttime
		set endmin to first text item of endtime
		set endsec to second text item of endtime
		set songmin to first text item of songLength
		set songsec to second text item of songLength
		set AppleScript's text item delimiters to ""
		
		play current track
		pause
		set startingPos to my min(my max(60 * startmin + startsec, 0), 60 * songmin + songsec)
		set endingPos to my min(my max(60 * endmin + endsec, 0), 60 * songmin + songsec)
		
		if startingPos > endingPos then
			display alert "starting time is after ending time. Exiting"
		end if
		
		if endingPos - startingPos > 35 then
			display alert "range specified is longer than 35 seconds. trimming"
			set endingPos to startingPos + 35
		end if
		
		display alert "the chosen song will now play"
		set player position to startingPos
		play current track
		
		repeat until player position ³ endingPos
		end repeat
		pause
		
		set final to button returned of (display dialog "Would you like to select this section for your ringtone?" buttons {"No", "Yes"} default button "Yes")
		
		if final = "Yes" then
			exit repeat
		else
			display alert "If you would like to choose a different song, please hit 'cancel' on the next screen and restart the script"
		end if
	end repeat
	
	set start of current track to startingPos
	set finish of current track to endingPos
	set dbid to database ID of current track
	set origDuration to duration of current track
	
	set current encoder to encoder "AAC Encoder"
	set convertedSong to convert current track
	set convertedSong to first item of convertedSong
	
	set start of (some track of playlist "Music" whose database ID is dbid) to 0
	set finish of (some track of playlist "Music" whose database ID is dbid) to origDuration
	set convertedPath to (get location of convertedSong)
	
	tell application "Finder"
		move file convertedPath to tonesFullPath
		
		set AppleScript's text item delimiters to "/"
		set convertedPath to convertedPath as string
		set songPath to last text item of convertedPath
		set AppleScript's text item delimiters to ".m4a"
		set songName to first text item of songPath
		set tonesFullPathP to POSIX path of tonesFullPath
		
		do shell script "mv " & quoted form of (tonesFullPathP & songPath) & " " & quoted form of (tonesFullPathP & songName) & ".m4r"
		open tonesFullPath
		
		delay 1
		display alert "If you would like to add this ringtone to an Apple device, drag the .m4r file in the Tones folder to the Tones section of your connected device in iTunes. You can delete the ringtone from your iTunes songs library."
	end tell
end tell

on max(x, y)
	if x ³ y then
		return x
	else
		return y
	end if
end max

on min(x, y)
	if x ² y then
		return x
	else
		return y
	end if
end min


(* Cannot trim song with quickTime Player ??!!
tell application "QuickTime Player"
	activate
	open songPath
	trim document 1 from startingPos to endingPos
end tell
*)

(* As far as I can tell, no obvious way to do this step 
Move .m4r file into Tones section of connected device *)