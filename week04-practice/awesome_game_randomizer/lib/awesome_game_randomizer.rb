# frozen_string_literal: true

module AwesomeGameRandomizer
  require_relative "awesome_game_randomizer/coin_flip"
  require_relative "awesome_game_randomizer/draw_a_card"
  require_relative "awesome_game_randomizer/dice_roll"
  require_relative "awesome_game_randomizer/version"

  class Error < StandardError; end
end
