TermNotes
=========

A simple notes application for bash.

## Usage ##

Run TermNotes from the command line as you would any other shell script.
	`./TermNotes.sh`

TermNotes creates a hidden text file: `~/.notes`

Running without any arguments will result in TermNotes printing out it's usage.

## Arguments ##

-s		Shows all the notes you have created.

-a		Appends the note, passed as the last argument, to the note list.
			Ex: `./TermNotes.sh -a "Don't forget milk."`

-c		Clears the note list.

## Bashrc fun! ##
For some real fun, add the following to your .bashrc file.

```bash
# Create TermNotes aliases
alias shownotes='./TermNotes.sh -s'

alias note='./TermNotes.sh -a'

alias clearnotes='./TermNotes.sh -c'


# Show the notes you have left yourself each interactive invocation of bash
shownotes
```
<dl>
  <dt>Important! Make sure to place TermNotes.sh in the same directory as your bashrc or change the aliases to point to the correct file path where TermNotes resides.</dt>
</dl>

What does this do? 

This will now allow you to:

1. Use the command `shownotes` to print out all of the notes you have created.

2. Use the command `note`, followed by your note, to append it to the note list.

		Ex: `note "Don't forget milk."`

3. Use the command `clearnotes` to clear all the notes.

4. Most importantly, it will print out your note list each time you open up your terminal!

