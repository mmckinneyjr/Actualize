# <b>AwesomeGameRandomizer</b>

##### Install awesome_game_randomizer gem
````
gem install awesome_game_randomizer
````
##### To use Gem:
````
require 'awesome_game_randomizer'
````
##### Flip a coin for heads or tails
````
AwesomeGameRandomizer::Coin.flip
````
##### Draws a random card from a 52 card deck
````
AwesomeGameRandomizer::PlayingCard.draw
````
##### Number of 6 sided dice to roll
````
AwesomeGameRandomizer::Dice.roll(20)
````
##### First number is the number of selected numbers
##### Second number is the range 1 to your number
````
AwesomeGameRandomizer::Dice.roll(20)
````
