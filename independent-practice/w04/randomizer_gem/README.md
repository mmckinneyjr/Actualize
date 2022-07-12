# Build Your Own Ruby Gem

You've used them, but now it's time to create one of your own. 

As a quick refresher: A Ruby gem is simply a group of files that you can upload to the internet and let others download. 

It's actually a lot like creating your own mobile app and submitting  it to Apple's App Store so that others can download it to their phones. With a Ruby gem, though, the stuff you're uploading for public consumption isn't necessarily a completed app, but a bunch of files that usually consist mostly of Ruby code.

Downloading a gem from the internet is almost as easy as downloading an app from the App Store. To download a gem, all you need to do is enter the simple command in the terminal:

```
gem install name-of-gem-goes-here
```

In some larger apps (like Rails apps), you may use the `bundler` tool to automatically download an entire list of gems contained in a `Gemfile`.

Why would anyone download your Ruby code? Well, firstly, the gem you made *could* actually be an app that someone could use straight out of the box (perhaps in the terminal). But usually, a Ruby gem is a *library* - that is, some code that other developers can use in their own codebases.

In this exercise, you will create your own Ruby library that others can download - and even incorporate into their own codebases. 

Will this exercise be super cool? You bet. Will the library you create be super useful to other developers? Erm... we'll let you be the judge of that.

Note that this exercise contains no files other than this README. You'll be creating your gem from scratch.

## An Example Gem: Faker

Let's look at a simple gem that will serve as a kind role model for the gem that you'll be creating. We actually mentioned this gem in a previous deep dive. It's called *Faker*.

There are two primary places where this gem lives online. One place is on the [Rubygems website](https://rubygems.org/gems/faker/). This website is kind of equivalent to the App Store in the fact that it's the official site where you can find all Ruby gems that are available for download. One signifcant difference, though, is that you don't usually download the gem straight from the website; instead, you use the `gem install` terminal command mentioned earlier. However, the Rubygems website does serve as a kind of catalog of all gems available for download.

While the official gem is cataloged on the Rubygems website, the actual code for the gem can be viewed at its [Github repo](https://github.com/faker-ruby/faker). The instructions for using the Faker library are also found there in the README.

When making your own gem, you will also be pushing your library to these two places. You'll push it to a Github repo (which you're already adept at doing), and you'll also make it available on the Rubygems network so that other developers can easily download it with a `gem install` command.

## Using Faker

We're not going to give a tutorial on how to use the Faker gem; you can research that on your own. But let's look at the very basics, since the gem you'll be creating will be modeled after this approach.

Check out the [Usage section of the Faker README](https://github.com/faker-ruby/faker#usage). Here you'll see a couple of important things.

Again, this library can only be used if you've downloaded it (with `gem install faker`). 

Once you've done that, you'll also need to add the line `require 'faker'` to the top of your own Ruby file if you want to use the Faker library within your own code. This is generally true for all Ruby libraries.

> Pro tip: You can try out the Faker gem inside `irb` too! You just need to enter the line `require 'faker'` within irb first.

Then, the Faker docs give two examples of using the Faker library. If you use the line `Faker::Name.name` within your own code, it will return a string containing a random person's name. And if you use `Faker::Internet.email`, it will return a randomly generated email address.

As an aside, it's really fun to check out all the other useful and funny [generators](https://github.com/faker-ruby/faker#generators) that Faker has to offer.

## Your Gem: A Game Randomizer

Your job for this exercise is to create a gem similar to Faker. However, it will focus on generating random results for games, such as rolling dice and picking cards from a standard deck of playing cards. The Faker gem doesn't do most of these things, so your gem will provide a niche use for other developers! 

(In reality, simulating things like dice rolling is so simple that a developer may not turn to your gem for help. But we're keeping things easy so that you can focus mainly on the techniques of gem creation.)

If you have another idea for a gem that you'd like to create, go right ahead! The example of randomizing game results is just a sample idea. (We'll describe it below shortly). If you choose your own idea, though, we recommend keeping the main thrust of your code *really* simple.

Before we proceed, we should mention that just as every app in the App Store has a unique name, each Ruby gem must also have a unique name. (If there were two gems with the name 'coolgem', how would the computer know which gem to download when someone enters the `gem install coolgem` command?)

So while we're going to call our gem `GameRandomizer` below, you'll need to come up with your own unique name for your gem.

Ok, let's get to it. Here's what your gem is supposed to do.

### Flipping a Coin

The first grand feature of your awesome library is that it should simulate the flipping of a coin to get either `"heads"` or `"tails"` (as a string).

So, your library should allow someone to write code like this:

```
GameRandomizer::Coin.flip     #=> "heads"
```

Of course, the result of `"heads"` or `"tails"` should be random.

### An Aside About Namespaces

Note how our proposed code above doesn't say just `Coin.flip`, but instead `GameRandomizer::Coin.flip`. This prefix of `GameRandomizer` is known as the *namespace*. 

The namespace is important because imagine that some developer is using your `GameRandomizer` library. Let's say that they happen to have a `Coin` class in their own codebase. The fact that you also have a `Coin` class may totally mess with the other local `Coin` class. So to keep things separate, the gem includes a namespace, to indicate that `GameRandomizer::Coin` class is distinct from any other `Coin` class that may exist in the codebase.

Again, for your library, the namespace will not be `GameRandomizer`, but the unique name you've chosen for your gem. We're just using `GameRandomizer` as an example.

### Card Picker

The second feature of your gem is one where a random card is selected from a standard deck of playing cards. For example:

```
GameRandomizer::PlayingCard.draw     #=> "Jack of Diamonds"
GameRandomizer::PlayingCard.draw     #=> "3 of Clubs"
```

It's up to you if you want to include the Joker!

### Dice Roller

This feature should roll a given number of dice.

For example, this is how to roll 3 dice:

```
GameRandomizer::Dice.roll(3)     #=> [4, 6, 1]
```

The result should be an array of integers ranging from `1` to `6`.

### Lotto Picker

The final feature is the picking of lotto numbers. This method should accept two parameters. The first is how many numbers to pick, and the second is the maximum number that a picked number can be.

For example, here's how we'd pick 6 lotto numbers, where the greatest number could be 69:

```
GameRandomizer::Lotto.pick(6, 69)    #=> [55, 21, 1, 36, 68, 13]
```

That's it for the basic feature, although you may feel free to add your own! See the end of this README for a note on publishing the gem.

## A Note About Discovery

You'll need to do quite a bit of research to learn to create your own gem! The Rubygems website provides documentation on how to do this, but you may find that other tutorials on the web may be clearer. One word of warning, though: Some tutorials may be out of date and no longer represent the current way of creating gems. So keep an eye out for how recently a tutorial was published.

## Bonus: Unit Tests

As a bonus, include your own unit tests with the gem! While you can't write tests to check for random results, you could check whether the results contain the right types of things. For example, you can check whether the result of picking lotto numbers is an array with the right amount of numbers.

## Publish the Gem!

To really make sure that you've completed this exercise correctly, check to see if your classmates or colleagues can install the gem (using the `gem install` command) and use the gem on their own computer.

You may ask: Do I really want to put this gem out into the world? Isn't it akin to publishing a silly app onto Apple's App Store?

Firstly, there's plenty of garbage Ruby gems on the web; the Rubygems website doesn't exert a lot of quality control.

Secondly, you can always remove a gem from the Rubygems network once you've completed the exercise if you really want to. First make sure that your friends can successfully download and use the gem on their own computer, and then feel free to remove the gem permanently.