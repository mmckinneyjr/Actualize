class Player
  attr_accessor :name, :turn

  def initialize(name)
    @name = name
    @turn = true
  end
end
