=begin 
        CLASS
 ------------------
 *instance variables
  @my_var
 -------------------
 *instance methods
 def method_name
    ....
 end
 -------------------


=end

class Dog
  def name=(value)
    @name = value
  end

  def name
    @name
  end

  def talk
    puts "#{@name} Bark! Gou Gou"
  end

  def move(destination)
    puts "Runing to the #{destination}"
  end
end

popy = Dog.new
popy.name = "POPPY"
popy.talk
popy.move "food bowl"

grey = Dog.new
grey.name = ("grei")
grey.talk
grey.move ("home")

puts grey.name

class Bird
  attr_accessor :name
  attr_accessor :age
  attr_accessor :color, :weight
  #it representation for 4 methods

  def move
    puts "#{@name}: #{@age} years old, will fly"
  end
end

flap = Bird.new
flap.name = "Flappy"
flap.age = 3
flap.move
