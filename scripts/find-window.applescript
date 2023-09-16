tell application "Skim"
	set doc to 1
	set match to false
	repeat while match is false and doc < number of windows
		set match to name of window doc starts with "yoneda-speedrun-pal-eu.pdf"
		if match is false then
			set doc to doc + 1
		end if
	end repeat
	tell document doc
		go to page 10
	end tell
end tell