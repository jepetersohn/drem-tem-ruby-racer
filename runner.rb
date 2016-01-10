#Ruby Racer runner file
require_relative 'game'


race = Game.new({num_of_cars: 40, track_length: 80, die_sides:10})

view = race.view
view.race_starter
winner = race.round
puts "in turn #{race.counter}"

view.end_game(winner)

