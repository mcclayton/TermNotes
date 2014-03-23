#!/bin/bash
# TermNotes
# A simple notes application for bash made by Michael C. Clayton

USAGE="TermNotes arguments:\n\t-s\tShow all the notes.\n
\t-a\tAppends the note, passed as the second argument, to the note list.\n
\t\t\tEx: ./TermNotes -a \"Don't forget milk.\"\n
\t-c\tClears the note list."

if [ "$1" == "-s" ]; then
        # Show the notes
        # If the file ~/.notes does not exist, create it
	if [ ! -f ~/.notes ]; then
		echo -n "" > ~/.notes
	fi
        # Print the contents of the notes file
		#Gets the number of line in the note file without capturing extra output from wc
	NUMOFLINES=$(echo $(wc -l < ~/.notes))
	echo "You Left (${NUMOFLINES}) Notes For Yourself:"
	echo ""
	cat -n ~/.notes
	echo ""
elif [ "$1" == "-a" ]; then
	# Append the note to ~/.notes
	echo -e "\t+ $2" >> ~/.notes
	echo "Note has been added."
elif [ "$1" == "-c" ]; then
	if [ "$2" == "all" ]; then
		# Clear all the notes
		echo -n "" > ~/.notes
		echo "Notes have been cleared."
	elif [[ "$2" != *[!0-9]* ]]; then
		# If the second argument is an actual integer
		# Clear the nth note. Where n is the second argument.
		echo "Cleared note:"
		sed -n "$2"p ~/.notes
		sed -i".bak" "$2"d ~/.notes
	else
		echo "Invalid argument(s). Note not cleared."
	fi
else
	echo -e $USAGE
fi
