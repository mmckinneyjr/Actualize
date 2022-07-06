# Playlist

## Exercise Overview

In this exercise, you'll be creating a playlist app - which allows a user to create a playlist of their favorite songs. The user will be able to interact with this app through the terminal.

What's really cool about this deep dive is that you'll actually be saving the playlist to a file. In all the terminal apps we've created before, all the data was lost once we exited the app. 

Here, however, the user can save their playlist to a file before they exit the app. This way, when the user runs the app in the future, the user's playlist can be loaded from the saved file. Then, the user can continue adding to their playlist from where they left off.

## Exercise Details

There are a number of moving parts to this exercise, and you'll be working on two different pieces of this app.

Firstly, you'll complete the `Playlist` class found in the `playlist.rb` file. (This class, in turn, references the `Song` class from the `song.rb` file, but the `Song` class has already been completed for you. Make sure you check it out.)

Secondly, you'll also created your own "runner" file (similar to the `runner.rb` files from some previous deep dives), which will serve as the actual interactive app that the user runs in the terminal. This file doesn't exist yet; you have to create it from scratch.

### The Song Class

An instance of the `Song` class represents a single song, whose attributes are:

* `title` - the title of the song
* `artist` - the name of the song artist
* `album_name` - the name of the album which the song came from
* `genre` - the genre of the song (e.g. classical, rock, jazz)

All of these attributes should be strings.

This class is complete and you are not expected to add any code to it.

### The Playlist Class

This is where most of the action is (or, will be). A `Playlist` has one attribute, `@songs`, which is an array containing numerous instances of `Song`. Essentially, a `Playlist` is the collection of the user's favorite songs.

The `Playlist` also has several methods which provide it with additional functionality. Your job is to complete these methods. As we'll point out below, there are unit tests for some, but not all, of these methods.

Here are the details of what you need to do with the `Playlist` class:

### The Constructor

The constructor of the `Playlist` can optionally be passed a filename as a parameter. This filename would be the name of a file that a user previously saved their playlist to.

The constructor's behavior should depend on whether or not this filename was provided.

If no filename is passed in, the `@songs` attribute should simply be an empty array. (Essentially, the user will be creating a brand new playlist from scratch.) We've actually already filled in the line of code that accomplishes this.

However, if a filename *is* passed in, the `Playlist` should populate the `@songs` array based on the data loaded from that file. This functionality only really makes sense once you implement the feature that saves the playlist data to a file in the first place. (We'll get to that shortly.) So you'd probably want to hold off on building this "load file" feature until you complete the "save to file" feature.

### Add Song

The `add_song` method allows a user to add a new `Song` to their playlist. There's a unit test that defines the expected behavior of this method.

### Save to File

The `save_to_file` method should save all the song data as a CSV. It accepts a `filename` parameter so that a user can choose their own filename to save the data to.

It's up to you as to how you'd prefer to store the CSV data. It should be definitely be in CSV format, but you can decide the order of the columns and such.

There are no unit tests for this method, so you'll need to check for yourself whether this method works properly.

### Delete File

The `delete_file` method allows a user to provide a song title (as a string), and will delete the corresponding `Song` from the playlist. That is, the `Song` should be removed from the `@songs` array.

There is a unit test for this method.

### Group by Genre

This method should return a new array, which should contain all the `Song`s from the `@songs` attribute, but in a specific order, as follows:

All the songs should be *grouped* together by genre, and should be sorted in *alphabetical order of the genre*. So, let's say the playlist has a bunch of songs from the genres "classical", "rock", and "jazz". This method should return an array where all the "classical" songs are first, followed by all the "jazz" songs, followed by all the "rock" songs. (Alphabetically, "classical" comes before "jazz" which comes before "rock".)

Within each genre, the order of the songs does not matter. (For a bonus, though, feel free to implement a feature where within each genre, the songs are sorted alphabetically by title.)

### The Runner

Don't forget that in addition to completing the `Playlist` class, you also need to create the `runner.rb` file! This will be the actual interactive app that the user can run in the terminal. Again, this file doesn't yet exist; you have to create it from scratch.

The app should allow the user to:

* Add songs to their list (by entering all of the song's info)
* Delete a song from the list (by entering the song's title)
* Print out their entire playlist (ideally, grouped by genre)
* Save their playlist to a file of their choice (the user provides a filename)
* When the user starts of the app, they can load a saved playlist (by providing the name of the file they'd like to load from). Or, they can decide to begin a brand new list.

## Unit Tests

This exercise comes with unit tests, found in the `test_playlist.rb` file. You can run the tests with:

```
ruby test_playlist.rb
```

Only three methods of the `Playlist` class have tests. Regarding the saving and loading of data - you'll have to verify that on your own. 

Ultimately, a completely functional "runner" app is the sign that you've finished this deep dive.

Note that by default, most of the tests are skipped. You'll have to comment out the `skip` keyword to activate each of the tests.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```