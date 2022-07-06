# Phonebook

## Exercise Overview

In this exercise, you'll be creating an app that serves as a local phonebook. Say goodbye to hefty paper books and killing trees. With this app, a user can simply look up anyone's phone number by searching their name.

## Exercise Details

This exercise comes with several important files. The only file which you'll be writing code in is the `phonebook.rb` file, as your job is to complete the `Phonebook` class therein.

The `Phonebook` class references another class, namely the `Entry` class. The `Entry` class has already been completed for you, and can be found inside the file `entry.rb`. An `Entry` represents a single entry inside the phonebook. It simply contains three bits of data: A person's first name, last name, and phone number. Make sure you understand the `Entry` class, as your work will depend on it.

The `Phonebook` class that you'll be completing represents the entire phonebook, which is essentially the collection of all the entries. Besides for holding all of the entries, the `Phonebook` class also contains several methods which will allow for more significant functionality. These methods have not yet been completed - that's *your* job! We'll describe these methods shortly.

In addition to the aforementioned files, there's a `runner.rb` file, which is the interactive phonebook app that someone can use in their terminal. This has already been completed for you, but it will only run correctly once you complete the methods from the `Phonebook` class.

### CSV: Comma-Seperated Values

There is yet another file in this repo called `data.txt` which contains all the raw data that the phonebook will use. Open this file now and take a look at it.

As you'll see, each row in the file represents a single person in the phonebook. In each row, there's a last name, followed by a first name, followed by a phone number. You'll also see that each of these bits of data are seperated by a comma. It's all pretty intuitive.

This data format actually has its own special name: *Comma-Seperated Values*, or *CSV* for short. A CSV file is simply a file like the `data.txt` file. Each row is a single entity, and the attributes of each entity are seperated by commas. Although this format has a fancy name, it's actually simple and straightforward.

Sometimes you'll see files with the `.csv` file extension. That indicates that the file is a CSV file. However, there's nothing magical about that file extension. As you can see, our file has a `.txt` file extension, but is technically a CSV file merely by the way the data is organized.

Ruby comes with a special library of methods designed for reading CSV files. You can decide to use this libary, but you certainly don't have to. Reading in lines of files and splitting up the data by the commas is simple enough even without this library. That being said, we do recommend you check out the Ruby CSV library for the sake of *discovery*, even if you don't use it for this exercise.

### The Phonebook Methods

For this exercise, you need to complete the following methods:

### The constructor (a.k.a. the `initialize` method) 

When creating a new instance of a `Phonebook`, a filename will be passed in as an argument. You can see this in action in the `runner.rb` file, where the code near the top says:

```
phonebook = Phonebook.new("data.txt")
```

The job of the constructor is to read in the CSV file and have all of its data ready to be searched. Specifically, for each line in the CSV file, you'll create a new `Entry` instance. All of these instances should be stored in an attribute called `@entries`. 

At first glance, `@entries` can be a basic array of `Entry` instances. However, you may also want to consider other options, such as a `@entries` being a hash, and the `Entry` instances can live inside this hash. For the sake of decomposition, start with what's easiest for you, but consider other options as you work through the exercise.

By the time the constructor is finished running, the `@entries` attribute of your `Phonebook` instance should contain all the information from the CSV file. Again, the exact data format is up to you.

### Full Name Lookup

Our app will allow a user to search for a person in the phone book by their full name.

The `full_name_lookup` method accepts two strings as arguments: the last name and the first name. This method should return the `Entry` instance corresponding to the person with that exact first and last name.

If no one in the phonebook has that combination of first and last name, the method should return `nil`.

### Last Name Lookup

Our app will also allow the user to quickly see all people with a given last name.

The `last_name_lookup` method accepts one string which represents a last name. The method should return *an array* of `Entry` instances, with all of people who have that last name.

As an additional requirement, your method should return the entries in alphabetical order of the *first* name. 

For example, in this data, there are three people with the last name "Bailey". The entries should be returned in the order of Bari Bailey, Jaquelyn Bailey, and Russ Bailey, so that their first names are in alphabetical order. (Just like a phonebook!)

If no one in the phonebook has the provided last name, the method should return `nil`.

### Print

The `print` method should print the entire phone book. The entries should appear in alphabetical order by last name. For multiple entries with the same last name, the entries should be sorted alphabetically by first name.

Note that the `Entry` class also has a `print` method. You should call this method when printing each entry.

For the data currently in the `data.txt` file, the beginning of the printed phone book should appear exactly like this:

```
Abbott, Evelin: (509) 378-9006
Abernathy, Wenona: 552.126.8583
Altenwerth, Sherika: 408.000.5475
Anderson, Dixie: (359) 043-2610
Anderson, Von: (860) 815-2920
Ankunding, Jamison: 624.333.9268
Ankunding, Ronni: 236.289.2681
Armstrong, Monica: 289.006.1038
Auer, Dominic: (426) 927-5731
Bailey, Bari: 1-572-840-3226
Bailey, Jaquelyn: (320) 085-3880
Bailey, Russ: 514-315-9066
Barton, Buffy: 153-231-9940
Barton, Shawn: 353.421.4981
Barton, Timmy: 828.964.4906
...
```

Of course, your printed phonebook should have many more results. We've only put the first few here for brevity.

## Unit Tests

There are no unit tests for this exercise. You can instead use the interactive app (in the `runner.rb` file) to ensure that all of your functionality works correctly.

## Bonus!

As a bonus, try to have all the phone numbers be printed in *one* consistent format of your choice. Currently, the phone numbers in the `data.txt` file have several different formats. That is, there are different combinations of dashes, periods, parentheses, etc.

## Also, check this out!

If you want to see the script we used to generate the `data.txt` file (there's no way on Earth we'd write it by hand!), check out the `data_script.rb` file. It utilizes the awesome and fun [Faker](https://github.com/faker-ruby/faker) gem, which can randomly generate a seemingly limitless number of things.

You have to download the gem first (`gem install faker`) if you want to run the file. Currently, it's set up to create a brand new file `data2.txt`.

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```