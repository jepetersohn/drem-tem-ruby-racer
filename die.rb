class Die
  attr_reader :sides
  def initialize(sides)
    @sides = sides
  end

  def roll
    return rand(sides+1)
  end
end
