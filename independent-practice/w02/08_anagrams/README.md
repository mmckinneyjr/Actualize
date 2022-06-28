# Anagrams

## Exercise Overview

In this exercise, you'll be working on a single Ruby method that checks whether strings are anagrams. 

Anagrams are words that have the same letters but in a different order. For example, the words "gallery" and "allergy" are anagrams. If you look carefully, you'll see that they have the same exact letters, but rearranged. 

Your method will determine whether various strings are anagrams of each other. The exact details are below.

## A Note About Decomposition

This exercise is meant hone your decomposition skills.

Important note: This is one exercise where it's better to *stay away* from discovery. Specifically, if you'd Google: "Ruby check strings anagrams" - you're going to find plenty of working approaches. But if you do this, you won't gain much from this exercise.

The idea here is to learn how to break down a complex problem into smaller parts and plan out strategies for developing an algorithm of your own. This won't happen if someone delivers a solution to you on a silver platter.

However, if you want to use Google to research a bit of syntax or the like, feel free to do so.

## Exercise Details

You'll be completing the code for the `match` method inside the file called `anagrams.rb`. 

The `match` method accepts two arguments: `word` and `list`. The `word` is to be a single string, and `list` is an *array* of strings.

The method is supposed to return an *array* containing all of the strings from `list` that are anagrams of `word`. For example:

If `word` is `"allergy"` and `list` is:

```
["gallery", "ballerina", "regally", "clergy", "largely", "leading"]
```

then, the `match` method should return:

```
["gallery", "largely", "regally"]
```

since these three strings are anagrams of `"allergy"`.

## Unit Tests

This exercise comes with unit tests, found in the `test_anagrams.rb` file. You can run the tests with:

```
ruby test_anagrams.rb
```

Note that by default, most of the tests are skipped. You'll have to comment out the `skip` keyword to activate each of the tests.

### Hey Look - Here's Something Interesting!

If you take a look at the second line of the `test_anagrams.rb` file, you'll see:

```
require_relative 'anagrams'
```

You'll note that we're just requiring `'anagrams'` instead of the full filename, `'anagrams.rb'`. This is actually just fine, as Ruby assumes that you're looking for a file with the `.rb` filename extension. We could have done this in previous test files, but decided to reveal this exciting development now.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```