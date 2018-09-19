=begin

*Copy-paste almost bad idea, waste code, and what happen when the code copy need to change sometime in the future
Inheritance to the RESCUE!

*You see, Car, Truck, Motorcycle have some serveral instance attributes and methods in common,
so we could group some share character in to a Vehicle class
=end

class Vehicle
  attr_accessor :gas_used, :odometer

  def mileage
    if @gas_used == 0
      return 0.0
    end
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

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents = @cargo)
    puts "Securing #{contents} in the truck bed"
    @cargo = contents
  end
end

t203 = Truck.new
t203.cargo = "WOOD"
t203.load_bed "COAL"
#subclass keep the inherited methods alongside new ones

t203.steer
t203.accelerate

#---------------------
puts "------------------"
vehi = Vehicle.new
vehi.gas_used = 10

vehi.odometer = 100
puts vehi.mileage

puts vehi.gas_used

# -it sure looks like the instance_variables (such as @gas_used and @odometer)  are inherited form the superclass
# -but what actually gets inherited are the odometer and gas_used instance_methods (the attribute accessor methods).
# these methods just happen to assign to instance variables name @odo & @gas (because that's the Ruby convention)
# The variables are created on the car object at the time a value is assigned to them

#---Conclusion---
# * instance variables are not inherited --> prove it!

class Train < Vehicle
  def odometer=(new_val)
    @dog = new_val
  end

  def odometer
    @dog
  end

  def gas_used=(val)
    @cat = val
  end

  def gas_used
    @cat
  end
end

puts "------------------"
tr = Train.new
#tr.odometer = 10 //tr.gas_used = 50
#puts tr.dog
#puts tr.cat
puts tr.odometer
puts tr.gas_used
#puts tr.mileage
puts tr.gas_used

t = Train.new
t.odometer = 100
t.gas_used = 12
puts t.odometer
puts t.gas_used
#puts t.mileage

puts t.class.name
