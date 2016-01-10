class Car
  attr_accessor :position, :winner, :name
  def initialize
    @position = 0
    @winner = false
    @name = name_gen
  end

  def name_gen
    name_bank = ['😊', '❤️', '😬', '😐', '👻', '💀', '💩', '👽', '🐨', '🐲', '⛄️', '🐙', '🎍', '🍳', '🍑', '🍕', '👾', '💉', '🔪']
    return name_bank.sample
  end

end


