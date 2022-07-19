# QuickNotes Executable App

## Exercise Overview

In this exercise, you'll be creating a basic terminal app - called QuickNotes - which allows the user to jot down quick notes and retrieve them at a later time. However, what's unique about this app is that it won't be run using a `ruby FILENAME` command. Instead, the app will be what's known as an *executable* app, meaning that it is run with a custom command in the terminal.

Additionally, instead of loading some sort of prompt, the custom command will be a simple one-liner. That is, the user will enter a single-line command to save a note, and another single-line command to retreive saved notes. The exact details appear below.

 You can build executables using various languages, but you may as well use Ruby for now.

 Also, this deep dive does not come with any files other than this README, as you'll be building the executable app from scratch.

## A Note About Discovery

Building an executable isn't inherently complex, but you'll have to research how to do it. Remember to look out for Ruby-specific resources. 

## Exercise Details

Here's how the QuickNotes app is supposed to work. The executable should be triggered with the custom command: `qnotes`, as we're about to demonstrate.

To save a new note, a user should type the following command in the terminal:

~~~
qnotes new YOUR NOTE GOES HERE
~~~

For example:

~~~
qnotes new Hey, this is my first note
~~~

This will save the note to some file on the user's computer. The user won't choose it themselves; it's up to you what this file should be named and where it will live on the computer. 

In addition to saving the body of the note (in our example, `Hey, this is my first note`), the date that the note was recorded should also be saved.

Make special note that this command doesn't launch some kind of program that prompts the user to do anything else. As soon as the command is entered, the user should remain at the regular terminal prompt.

If the user wants to see all of their notes, they would enter the following command:

~~~
qnotes show
~~~

This would display all of the notes in a specific format, which you can see from the following example:

~~~
1: 6-23-2021: Hey, this is my first note
2: 6-25-2021: Java is NOT the same as JavaScript!
3: 6-30-2021: Today, I learned how to make an executable, cool!
~~~

As you can see, the notes are numbered and show the date of their recording. The numbering system is simple: The first note is note number `1`, the second note is note number `2`, and so on.

Finally, the user can delete a specific note with the following command:

~~~
qnotes delete 2
~~~

This would delete the second saved note. In the above example, this is the note `Java is NOT the same as JavaScript!`. Once you delete a note, the numbering shifts; that is, what was note `3` will now be note `2`, since it's now the second saved note.

## Unit Tests

As a bonus, go ahead and add some unit tests to your app. Identify the methods that are testable, and create appropriate tests for them.

## Bonus

There are many different ways to extend this app, so feel free to develop new ideas and implement them!

Some possible ideas:

* Add the ability to edit an existing note.
* Add the ability to assign notes to various categories of topics.
* Add the ability to view notes in an alternative order (instead of chronologically), such as alphabetically.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```