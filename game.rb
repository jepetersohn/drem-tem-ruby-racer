require_relative "car"
require_relative "die"
require_relative "track"
require_relative "view"
require_relative "reset_screen"

class Game
  attr_reader :round, :view, :arr_of_cars, :counter

  def initialize(args={})
    @num_of_cars = args.fetch(:num_of_cars,  2)
    @track_length = args.fetch(:track_length, 15)
    @track = Track.new(@track_length)
    @die_sides = args.fetch(:die_sides, 6)
    @arr_of_cars = Array.new(@num_of_cars) {Car.new}
    @view = View.new
    @die = Die.new(@die_sides)
    @counter = 1
  end

  def finished?(car)
    true if car.winner == true
  end

  def rolls_die
    @die.roll
  end

  def change_car_position(current_car)
    current_car.position += rolls_die
  end

  def round
    @arr_of_cars.each do |current_car|
      change_car_position(current_car)
      if current_car.position >= @track.length
        current_car.position = @track.length
        current_car.winner = true
        reset_screen
        @view.pretty_board(@arr_of_cars, @track_length)
        return current_car
      end
    end
    reset_screen
    @view.pretty_board(@arr_of_cars, @track_length)
    @counter += 1
    sleep 0.3
    round
  end



end




