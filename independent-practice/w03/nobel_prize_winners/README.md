# Nobel Prizes

## Exercise Overview

In this exercise, you will be writing software that prints out a beautiful chart of all the Nobel Prizes earned in history.

The interesting part of this deep dive is that we're going to execute two different versions of this.

First, we're going to pull all the Nobel Prize data from a JSON file that is included in this repo.

Then, we're going to allow the software to alternatively pull all the data from a third-party web API. 

What's really cool is that once we've written the code for the JSON file version, it takes very little extra code to get the API version to work. 

## A Note About Discovery

You'll probably need to do some research to learn how to parse a JSON file. As far as calling a web API, you've probably done some of that by now in class - but it'll be interesting to use similar techniques inside a terminal-based program.

## Exercise Details

You'll be completing the code for the `PrizeList` class inside the file called `nobel_prize_list.rb`. This class represents the list of all the Nobel Prize recipients. But first, let's take a look at another file.

### The Winner Class

We've already created a class called `Winner`, found in the `winner.rb` file. Take a look at that now.

You'll see that we're concerned with the following attributes of each winner:

* First name
* Last name
* Motivation - this is the reason they've earned the prize
* Category - the type of prize they've one (e.g. physics, peace, literature)
* Year - the year they won the prize. We will store this as an integer.

The `Winner` class also includes a method called `print`, which prints the details of the winner to the terminal according to a specific format. This is the format that we want to use for printing our prize winners to the terminal.

### The JSON File

Now, open the file called `winners.json`. This file contains *all* the data of Nobel Prize winners in history up until the year 2020. 

You may have encountered this already, but as a reminder, **JSON** (JavaScript Object Notation) is a specific way of organizing data. It's pretty intuitive, and essentially boils down to combinations of arrays and hashes. (In JavaScript, though, hashes are actually known as *objects*.)

Go ahead and inspect this file for a minute. You should get a sense of how this data expresses all the details of the Nobel Prize winners. 

### The PrizeList Class

As mentioned above, your job is to complete the methods of the `PrizeList` class. There are four methods.

We've started the constructor for you, but just barely. Here's the way that it should work:

If a filename is passed as a parameter, the constructor should load the data based on that file. The file is expected to be in JSON format, and for our purposes, will be the `winners.json` file we've included.

If there is no filename passed in, the constructor should instead load the data from the third-party web API. We'll get back to this later, though.

In either case, the constructor should populate the `@winners` array with many `Winner` instances, one for each Nobel Prize winner.

There are three other methods, all of which print lists of winners to the terminal. All of these methods should make use of the `print` method within the `Winner` class so that the winners will be printed according to our desired format.

The `print_all` method should print *all* of the winners.

The `print_category` method should print just the winners of a specific category. The method will accept a string as a parameter, such as `"physics"`.

The `print_year` method should print the winners from a given year. The year passed in as a parameter should be an integer.

To give you a basic visualization of what a printed list should look like, here's what should appear in the terminal after calling `print_year(1955)`:

```
Vincent              du Vigneaud          1955    Chemistry       for his work on biochemically important sulphur co...
Halldór              Laxness              1955    Literature      for his vivid epic power which has renewed the gre...
Willis E.            Lamb                 1955    Physics         for his discoveries concerning the fine structure ...
Polykarp             Kusch                1955    Physics         for his precision determination of the magnetic mo...
Hugo                 Theorell             1955    Medicine        for his discoveries concerning the nature and mode...
```

You may have to widen your terminal window (or make the font smaller) for this list to look as beautiful as it can be.

### Watch Out! Weird Data

Note that some of the data may not be exactly what you expect! For example, some Nobel Prize recipients are organizations rather than people, and as such, they won't have last names.

There may be some other unexpected things lurking in the data. You'll have to discover these things on your own and determine how you want to deal with them.

### The API

Once you've completed the app, and it can print all lists based on the JSON file, it's time to switch things over to the web API. Again, this will be triggered when no filename is passed to the constructor.

The web API, which can be found at - http://api.nobelprize.org/v1/prize.json - contains (virtually) the same JSON data as our JSON file. There's only two slight differences:

This exercise was created in 2020, so our local JSON file only contains the winners through 2020. The API will include the data beyond 2020 as well, so that's one major advantage of pulling the data from the API!

There's one other slight difference between the data in the API versus the data from the local JSON file: The motivation in the API puts extra quotation marks around its string. You'll want to eliminate these when printing the list to the terminal.

We recommend that you use the [HTTP Gem](https://github.com/httprb/http) to make the web request to this API.

However, you should find that getting the API data to load into your app should take just one or two lines of extra code beyond what you've already written! That is, once you've gotten the rest of the app to work with the local JSON file, it doesn't take much more to get your app to work with the API data. 

## Unit Tests

Since this app focuses mostly on printing to the terminal, there are no unit tests.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```