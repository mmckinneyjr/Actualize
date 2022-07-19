# Save to Firebase

## Exercise Overview

This deep dive can be implemented in one of two ways. Either it can be an extension of the previous deep dive (#17: QuickNotes), or it can be a brand new app. Either way, this project also involves saving simple notes from the terminal.

However, the main difference is that in this deep dive, instead of saving the notes to a local file on the computer, the notes will be saved to an external cloud database called the [Firebase Realtime Database](https://firebase.google.com/products/realtime-database).

Firebase is an online platform owned by Google that incorporates many products and services. One of these services is the *Firebase Realtime Database*, which is essentially an online database. In the backend web APIs you've created in class, you've saved data to your computer to a local Postgres database. An online database is similar; it's just that the database lives... well, online.

To use the Firebase Realtime Database, you need to interact with the Firebase Realtime Database API. This third-party API allows a developer to save and retrieve data from this online database.

ALSO, AN IMPORTANT SECURITY MESSAGE! Please make sure you read the Security Warning section below carefully, as there are important security ramifications of accidentally posting your API credentials online.

## A Note About Discovery

This exercise is heavy on discovery, as you'll need to read and play with the [Firebase Realtime Database documentation](https://firebase.google.com/docs/database). 

Note that even within the documentation you may discover more than one way to implement this project. For example, you may find that there's an existing Ruby client available to make this project easier. Or, you may want to implement an approach where you're making the API calls more directly.

## Exercise Details

As mentioned earlier, you have two choices as to how to implement this deep dive.

### First Option

You can implement this exercise simply as an extension of the QuickNotes executable project from the previous deep dive. This means that you're simply modifying that project as follows: Instead of saving the notes to a local file on the computer, you'll be saving and retrieving the notes from a Firebase Realtime Database that you'll have set up online.

### Second Option

The second option, which may be especially appealing if you haven't completed the previous deep dive yet, is to build this as a new app. If you choose this option, here's the gist of how the app should work:

The app will be a standard terminal app, which the user can run like any other Ruby file. So, if you create a `runner.rb` file, for example, the user would run the app with the command: `ruby runner.rb`.

When the app starts up, it will prompt the user to choose from the following options:

* Enter a new note
* Display all existing notes
* Delete a note by its number

You can customize these prompts as however you see fit. The main focus here is to merely give the user a way to access these primary functionalities of saving, reading, and deleting notes.

No matter how you decide to build this app exactly, the primary goal of this exercise is to make sure that you can successfully interact with the Firebase Realtime Database. That is, all of the user's saved notes will live there, and nowhere else.

### Setting Up an Account

To interact with the Firebase Realtime Database, you will need to set up a Firebase account, which may involve entering credit card information. (The Firebase services are constantly evolving, so these details are always changing.) However, you should still be able to access the Firebase Realtime Database for free. Again, these details change over time, but they will either offer a Free Plan or make it so that if you store only a small amount of data, the service is free. Please read the fine print carefully, though, just in case.

(If, for some reason, the Firebase Realtime Database is not something you're willing to use, you can search for other online databases that you're more comfortable with.)

## Bonus

See if you can also allow a user to edit and update an existing note. All the other bonuses from the QuickNotes exercise would apply here as well.

## Security Warning

IMPORTANT SECURITY WARNING

Signing up for a third-party API like Firebase Realtime Database usually involves receiving a personal API key that belongs to you and you only. This API key is essentially like your secret password for using your personal Firebase Realtime Database account.

You will likely need to place this API key somewhere in your code. However, if you commit this code to Github, other people can see your personal API key. Unscrupulous individuals can then use your account to do anything they want with it, potentially even causing your account to be charged unwanted fees.

Therefore, before you ever commit your code to Github, make sure that you've removed all references to API keys or any other personal data. 

If you're unsure about anything related to this, ask an instructor for help.

And if you believe that you may have mistakenly commited an API key in the past, the first thing to do is to login to your personal Firebase account online and have your API key changed.

Keep in mind that if you've committed your API key even once, it doesn't help to delete the API key from your code and commit your code again. This is because anyone can access your old commits. (The whole point of Git is to save each previous version of your code, right?)

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```