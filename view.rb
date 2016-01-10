require_relative 'game'
require_relative 'car'
require_relative 'reset_screen'
class View

  def get_input
    gets.chomp
  end

  def race_starter
    puts "READY..."
    sleep 1
    puts "SET..."
    sleep 1
    puts "GO!"
    sleep 1
  end

  def pretty_board(arr_of_cars, track_length)
    arr_of_cars.each do |car|
      track = Array.new(track_length, " |")
      track[car.position] = car.name
      print track.join + "\n"
    end
  end

  def end_game(winning_car)
    puts "#{winning_car.name}  WINS!"
  end
end
