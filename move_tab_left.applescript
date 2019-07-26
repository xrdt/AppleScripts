-- Script for moving Safari windows to the right...
-- I tied it to a keyboard shortcut (alt - shift - right arrow key) by using Automator. 
-- Steps for attaching to keyboard shortcut: 
-- 1. Open Automator 
-- 2. Select "Quick Action" 
-- 3. Select "no input" on first dropdown menu in the quick action editor 
-- 4. Type "run applescript" in the left panel with actions (e.g. Activate Fonts, etc)
-- 5. Save quick action with some nice name 
-- 6. Open up system Preferences 
-- 7. Go to "keyboard" --> "shortcuts" 
-- 8. Click "Services". Scroll down to the "general" section, where you will find the name of the quick action 
--    you just saved. 
-- 9. Double click on the "none" text in the same row as your service  to assign a keyboard shortcut. 

-- Be warned that the tabs reload each time you move them...


tell application "System Events"
	set activeApp to name of first application process whose frontmost is true
	if "Safari" is in activeApp then
		tell application "Safari" to tell front window
			set currentindex to index of current tab
			set totalTabs to number of tabs
			if currentindex is equal to 1 then
				move tab currentindex to after tab totalTabs
				set current tab to tab totalTabs
			else
				move tab currentindex to before tab (currentindex - 1)
				set current tab to tab (currentindex - 1)
			end if
		end tell
	end if
end tell