# Take-Home Interview #2

Here's the next take-home interview challenge. Note that this exercise includes a separate text file called `data.txt` that you'll need to complete it. 

The instructions are terribly written, and although they're concise, this is an exercise of significant complexity. But you can do it!

Also, have fun!

## Exercise Instructions

### Givens

* An Investor can see a Document if they have a direct association.
* An Investor can see a Document if that Investor has an association to an Account and that Account has an association to the specified Document.
* The attached text file [`data.txt`] with the given format.

Goals/Rules

* Write a program in Ruby that can figure out if a user can see a given document.
* Prove that it works with as much testing as is necessary. If you are unfamiliar with unit tests, you may skip this step. Note: (This company) does practice TDD/BDD so if you are brought on expect to learn about and write unit tests.
* Don't use a database or an ORM
* A testing framework is the only gem or outside code you may use.

Questions your program should be able to answer

* Can Bob Jones see that `actual_notes.txt`?
* What are the ids of the Investors that can see the `super_secret_meeting_notes_jan.pdf`?

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```