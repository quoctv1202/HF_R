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
  def set_name=(name)
    @name = name
  end

  def get_name
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
popy.set_name = "POPPY"
popy.talk
popy.move "food bowl"
