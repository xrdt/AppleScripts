tell application "Mail"
	set unprocessedMessages to (get every message of mailbox "Unprocessed Receipts" whose read status is false)
	
	set testsender to "byang@caltech.edu"
	set sender1 to "Uber Receipts"
	set sender2 to "DoorDash Order"
	
	set testreceiver to "ipacifics@gmail.com"
	set receiver to "j.y@roadrunner.com"
	
	set cardmatch1 to "9336"
	set cardcounter to false
	set cardRecord to ""
	
	set match1 to "Total"
	set counter to false
	set totals to 0 as real
	
	repeat with eachMessage in unprocessedMessages
		set counts to 0
		set counter to false
		set theSender to sender of eachMessage
		set theDate to date received of eachMessage
		
		if theSender contains sender1 or theSender contains sender2 then
			set theContent to content of eachMessage
			repeat with aParagraph in (paragraphs of theContent)
				set aParagraph to contents of aParagraph
				
				if (aParagraph contains cardmatch1) then
					set cardcounter to true
				end if
				
				if (aParagraph contains match1) then
					if aParagraph is equal to "" or aParagraph is equal to "Ê" then
					else
						set counter to true
					end if
				end if
				if (counter is true) and (counts) = 0 then
					set AppleScript's text item delimiters to "$"
					set textItems to every text item of aParagraph
					set AppleScript's text item delimiters to ""
					set value to (last item of textItems)
					set totals to totals + value
					set counter to false
					set counts to counts + 1
				end if
			end repeat
			
			set AppleScript's text item delimiters to "<"
			set processedSender to every text item of theSender
			set AppleScript's text item delimiters to ""
			set processedSender to (first item of processedSender)
			
			if cardcounter is true then
				set cardRecord to cardmatch1
			end if
			
			-- write data into sqlite database
			set loc to space & "~/desktop/Receipts.db" & space
			set head to "sqlite3" & loc & quote
			set insertion to "insert into receipts values ('" & theDate & "', '" & processedSender & "','" & value & "','" & cardRecord & "')"
			
			set test_exists to "select exists (select * from receipts where entity_paid='" & processedSender & "' and date='" & theDate & "')"
			set test_result to do shell script head & (test_exists) & quote
			
			if (test_result as number = 0) then
				do shell script head & insertion & quote
				
				-- Forward message 
				set theMessage to forward eachMessage
				
				tell theMessage
					make new recipient at end of to recipients with properties {address:testreceiver}
					make new recipient at end of cc recipients with properties {address:testreceiver}
					set subject to processedSender & theDate
				end tell
				
				send theMessage
				-- set read status of eachMessage to true
				-- move eachMessage to mailbox "Receipts" of account "Google"
			end if
		end if
	end repeat
end tell