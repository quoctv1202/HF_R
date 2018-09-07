=begin

*Copy-paste almost bad idea, waste code, and what happen when the code copy need to change sometime in the future
Inheritance to the RESCUE!

*You see, Car, Truck, Motorcycle have some serveral instance attributes and methods in common,
so we could group some share character in to a Vehicle class
=end

class Vehicle
  attr_accessor :odometer, :gas_used

  def mileage
    return @odometer / @gas_used
  end

  def accelerate
    puts "Floor it"
  end

  def sound_horn
    puts "Beep! Beep"
  end

  def steer
    puts "Turn front 2 wheels"
  end
end

class Car < Vehicle
end

class Motorcycle < Vehicle
end

winner = Motorcycle.new
winner.odometer = 100
winner.gas_used = 2
winner.sound_horn
print "The engine is very efficiently with: "
puts "#{winner.mileage} in the mileage index"
