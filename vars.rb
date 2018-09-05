car = 100
space_in_car = 4.0
drivers = 30
passengers = 90
car_not_driven = car - drivers
car_driven = drivers
carpool_capacity = car_driven * space_in_car
average_passengers_per_car = passengers / car_driven

puts "There're #{car} car available"
puts "There're only #{drivers} drivers available"
puts "There will be #{car_not_driven} empty cars today"
puts "We can transport #{carpool_capacity} people today."
puts "We need to put about #{average_passengers_per_car} people in each car."

# _ : it called "underscore character"

string = "car"
string += " driver"
puts string
puts "This: " + string.upcase + " is: #{drivers}"

puts (3 - 5).abs >= 0 ? "true" : "false"
