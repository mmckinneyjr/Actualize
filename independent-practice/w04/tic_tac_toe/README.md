# Tic-Tac-Toe

## Exercise Overview

In this exercise, you will be creating a complete Tic-Tac-Toe game, playable in the terminal.

You'll be creating the entire app *from scratch*, as we haven't provided you any existing code. All you've got is this README, and it's pretty brief at that.

## A Note About Decomposition

Since you're building this entire app from the ground up, make sure you break down the exercise into smaller, simpler tasks. It is absolutely worth investing extra time up front to plan out the different components of this app before you begin coding. Ultimately, you'll save time in the long run if you plan before you jump right into the rabbit hole.

Here are some places to start planning your strategy:

* Think about what classes, attributes, and methods you might need.
* Identify the easiest pieces of functionality and try to tackle those first. 
* Break down each piece of functionality (even the "easy" ones), and see if you can divide them into even smaller subtasks.

## There Isn't Just One Way

Keep in mind that there's no one "right" way to create this app. This isn't just true for this deep dive, but for all software that has ever been created in the world. So you may decide on using a particular group of classes, while your colleague may choose another set. As they say, there are many ways to skin a cat. (That's a terrible phrase, actually; I don't know who came up with it.) 

In any case, it'll be interesting to compare your ideas with your classmates' ideas and explore the various ways you can tackle this complex problem.

## Exercise Details

We're going to assume that you already know the basics of playing Tic-Tac-Toe, and apologize in advance if you don't. (You'll have to Google it, then.)

For the purposes of this deep dive, your app will be a two-player version of Tic-Tac-Toe, where two humans sit in front of the terminal and take turns playing the game. (In the bonus section below, we'll talk about playing against the computer.)

The design of the terminal output is up to you. For the sake of decomposition, start with a basic, crude output, and you can spruce it up later. The general idea, though, is that the terminal will alternate prompting each player to choose a space on the Tic-Tac-Toe board. After the player chooses the space, the updated board will be displayed in the terminal. 

If one player wins after their choice, the computer should announce the winner and end the game. (The program can end, or it can prompt the humans to choose if they want to play again.)

If all nine spaces are chosen, and there is no winner, the program should announce that the game ended in a draw (known as a "cat's" game).

And, that's about it. This project is signifcant in size and scope, so expect it to take more time than the usual deep dive. Good luck!

## Unit Tests

As a bonus, go ahead and add some unit tests to your app. Identify the methods that are testable, and create appropriate tests for them.

## Bonus

There are many different ways to extend this app, and we encourage you to come up with your own ideas. Perhaps the most interesting additional feature would be to make it so that a user can choose to play against the computer instead of another human. 

To do this, you'll have to create some form of AI (artificial intelligence). In fact, you can even create different levels of AI, such as "easy", "medium", and "hard".

An "easy" AI might just choose their spaces at random. This, of course, would be the easiest kind of AI to implement and is a perfect start to decomposing the general problem of creating an AI.

A "medium" AI might look one step ahead to see if they can win in the next move. It may also additionally look to see whether it can block the human opponent from winning in *their* next move.

If you want to go all out in creating a "hard" AI, look up the algorithm known as the **Minimax Algorithm**, which is so powerful, that the computer could never possibly lose. This algorithm will take careful research, though, so be prepared to invest a bit of time if you'd like to implement it. (It would be really awesome, though, and great to show off to others!)

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```