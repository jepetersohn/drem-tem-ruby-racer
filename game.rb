class Game
  def initialize(args={})
    @number_of_cars = args.fetch(:number_of_cars, 2)
    @track_length = args.fetch(:track_length, 15)
    @die_sides = args.fetch(:die_sides, 6)
  end

  def finished?
  end

  def rolls_die
  end

  def change_car_position
  end

  def next_car
  end

end




