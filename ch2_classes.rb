class Dog
  def set_name(name)
    @name = name
  end

  def talk
    puts "#{@name} Bark! Gou Gou"
  end

  def move(destination)
    puts "Runing to the #{destination}"
  end
end

black = Dog.new
black.set_name "Black"
black.talk
black.move("it's home")

#now we will approach a new concept
=begin 
* local variable: my_variable
  -it will no longer accessible when out of the current(local) scope
* instance variable: @my_variable
  -it will lives as long as the instance does 
  -it start with @ (at) symbol
=end
