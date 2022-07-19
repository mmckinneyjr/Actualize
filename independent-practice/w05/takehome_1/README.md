# Take-Home Interview #1

For the final deep dives, we'll be presenting you with real "take-home" interview questions. Many companies begin the interview process by assigning some kind of coding exercise to be done as homework. An applicant is usually given a specific timeframe to complete a take-home exercise, such as two days or a week.

There are many different kinds of take-home exercises, ranging from completing algorithm challenges to building complete web apps. While it's impossible anticipate what kind of take-home challenges you may encounter, doing deep dives is one of the best ways to prepare for them, since you get to expose yourself to a great variety of exercises.

In particular, take-home exercises tend to challenge your decomposition skills more so than your discovery skills. That is, the typical take-home challenge is often a semi-complex problem, and your best bet at tackling it is to break it down into easier parts. It's less common, though, for a take-home challenge to have you use a technology you've never encountered before (but it's certainly possible).

In this and the next few deep dives, we'll present you with *actual* take-home challenges that have been given by real employers. This will give you an even greater sense of the types of exercises you may encounter. Again, there are so many different kinds, but you'll at least get of what a real take-home challenge may look like.

## Communication, or Lack Thereof

Surpsingly, one of the most difficult aspects of a take-home challenge may simply be understanding what the exercise is asking you to do. This is not by design; often, the people writing these exercises simply aren't great writers!

As such, you may to invest effort in deciphering the instructions and making sure you understand them. Your mileage will definitely vary here, as some take-homes are well-written, while others are complete disasters. 

When encountering these "disaster" instructions, though, don't give up! Firstly, you can usually email the employer with clarifying questions. But even if you're not afforded that opportunity, do your best to come up with the most sensible interpretation that seems better than the alternatives, and run with it. You can always include your interpretation as part of your submission to show them what you *thought* you were supposed to do.

Because we also want you to get a sense of the kinds of instructions you may encounter in the real world, we're giving you the instructions *as written by the employers*. Some instructions will be less clear than others, so make sure you really spend time interpreting them until you feel that you have a solid idea as what you're being asked to do.

If you feel that you're truly stuck in understanding the exercise, please reach out to an instructor.

And without further ado, here's the first take-home challenge! Everything is straight from the employer, except for the submission instructions at the end. [Where applicable, though, we've added our own comments in brackets like this.]

## Exercise Instructions

Residents of Chicago can request graffiti removal by calling 3-1-1. Your job is to build a tool for reporting on graffiti removal requests by ward and month. [The City of Chicago is divided into 50 subsections called "wards", and each ward is led by an elected official known as an "alderman".]

Your tool should interact with the City of Chicago's data API to retrieve the information needed.

### Requirements

Your tool should take the following inputs:

- the last name of an alderman
- a month and year on which to report

Your report should return the following information:

- the full name of the alderman
- the ward number
- the month and year covered by the report
- the total number of graffiti removal requests for the ward for the month

Your tool should provide either a command-line interface or a JSON web service for receiving user input and providing the report. Do not use static data files to build the report. Your tool should interact with the City of Chicago’'s data API.

### City of Chicago's API descriptions

The data sets to use for this coding challenge are Chicago's graffiti removal request data set and ward offices data set.

Graffiti removal requests data set API description:

[https://dev.socrata.com/foundry/data.cityofchicago.org/cdmx-wzbz](https://dev.socrata.com/foundry/data.cityofchicago.org/cdmx-wzbz)

Ward offices data set API description:

[https://dev.socrata.com/foundry/data.cityofchicago.org/7ia9-ayc2](https://dev.socrata.com/foundry/data.cityofchicago.org/7ia9-ayc2)

### Optional Extensions

If you would like to go beyond the basic requirements, consider adding one or more of the following extensions to your tool:

- the ability to specify the location of the graffiti (garage and the front of a building are two examples of locations) or the type of surface on which the graffiti is found 
  - example locations: garage, front of a building
  - example surface types: brick, stucco
- the ability to compare the number of graffiti removal requests for two different months for the same ward
- the ability to compare the number of graffiti removal requests for two different wards in the same month
- the ability to report on how promptly, on average, the city responded to graffiti removal requests during a given month
- a UI to run in a browser

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```