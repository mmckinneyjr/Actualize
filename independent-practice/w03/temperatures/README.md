# Temperature Reader

## Exercise Overview

In this exercise, you will be writing software that analyzes a file containing multiple temperature readings (of the human body) and computes the average temperature of all these readings.

Take a quick look at the file `readings.txt`. You'll see that there's a single temperature reading on each line. However, you'll also note that the readings are entered in various temperature systems. Some readings are entered as Fahrenheit, while others are Celsius, and yet others are in Kelvin. The various systems are indicated by `F`, `C`, and `K` respectively.

The ultimate goal is to compute the average temperature in terms of *Fahrenheit* degrees. More details on this below.

## A Note About Discovery

Unless you've done it before, you'll probably need to research how to write code that reads an existing file. This is a great opportunity to learn a new thing, and a pretty cool thing at that.

## Exercise Details

In the file `temperature_reader.rb`, we've provided a `TemperatureReader` class for you to fill in.

It's possible to bypass this class altogether, and simply write a basic script that reads the file and computes the average. And if this helps you from a decomposition perspective, feel free to do that first. You can then fill in the `TemperatureReader` methods to make your code more organized using OOP techniques.

However, you may also find that filling in each method from the `TemperatureReader` class may help with the decomposition process. It's totally up to you.

Once we're talking about decomposition, do think about the very basic steps you'd want to code first. When it comes to reading the file, what's the most basic thing you can do? (Perhaps print each line?)

In any case, once you're ready to work on the `TemperatureReader` class, you'll see that we've left comments as to what each method within the class is supposed to do. 

As you'll see in the instructions, most of the heavy lifting will take place in the constructor (the `initalize` method). Specifically, when you create a new instance of a `TemperatureReader`, you'll pass in the filename as an argument. Then, the constructor will read in the file and populate the `@readings` array with numbers that represent Fahrenheit temperature readings. This will also involve converting Celsius and Kelvin readings into Fahrenheit degrees.

This is merely one way to organize the code into various methods, but certainly there are other valid approaches as well. To that end, feel free to add additional methods if you feel that they can add more organization and structure to your code.

## No Unit Tests (Gasp!)

There are no unit tests as part of this exercise. To know whether your code works properly, make sure that when your code calculates the average temperature of `readings.txt`, the result should be 98.446.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```