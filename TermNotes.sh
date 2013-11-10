#!/bin/bash
# TermNotes
# A very simple notes application made by Michael C. Clayton.

USAGE="TermNotes arguments:\n\t-s\tShow all the notes.\n
\t-a\tAppends the note, passed as the last argument, to the note list.\n
\t\t\tEx: ./TermNotes -a \"Don't forget milk.\"\n
\t-c\tClears the note list."

if [ "$1" == "-s" ]; then
        # Show the notes
        # If the file ~/.notes does not exist, create it
	if [ ! -f ~/.notes ]; then
		echo -n "" > ~/.notes
	fi
        # Print the contents of the notes file
	NUMOFLINES=$(wc -l < ~/.notes)
	echo "You left (${NUMOFLINES}) Notes For Yourself:"
	echo ""
	cat .notes
	echo ""
elif [ "$1" == "-a" ]; then
	# Append the note to ~/.notes
	echo -e "\t+ $2" >> ~/.notes
	echo "Note has been added."
elif [ "$1" == "-c" ]; then
	# Clear all the notes
	echo -n "" > ~/.notes
	echo "Notes have been cleared."
else
	echo -e $USAGE
fi
