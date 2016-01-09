#Ruby racer runner
die = Die.new
car_a = Car.new
car_b = Car.new
track_a = Track.new
track_b = Track.new

race = Game.new({number_of_cars:3, track_length: 20, die_sides: 8})

print = View.new(race)
