TermNotes
=========

A simple notes application for bash.

## Usage ##

Run TermNotes from the command line as you would any other shell script.
	`./TermNotes`

TermNotes creates a hidden text file ~/.notes

Running without any arguments will result in TermNotes printing out it's usage.

## Arguments ##

-s		Adds a new note, passed as the last argument, by appending it to the note list.
-a		Appends the note, passed as the last argument, to the note list.
			Ex: `./TermNotes -a "Don't forget milk."`
-c		Clears the note list.