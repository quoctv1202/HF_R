class Animal
  def name=(name)
    @name = name
  end

  def move(destination)
    puts "#{@name} move to the #{destination}"
  end
end

class Dog < Animal
end

class Amardillo < Animal
  def move(destination)
    puts "#{@name} unroll!"
    #puts "#{@name} move to the #{destination}"
    super
  end
end

amr = Amardillo.new
amr.name = "aniAmar"
amr.move "Ha Noi"

#this work ok! but unfortunate that we replicate the code from the move method of Animal class
# the 'super' keyword will help us

# when use the 'super' keyword within a method, it will call to the method same name in the superclass

class Person
  def greeting
    puts "Hello!"
  end

  def character
    "friendly"
  end

  #pass the argument to 'super'
  def say_hello(name)
    "Hello, #{name}."
  end
end

class Friend < Person
  def greeting
    super
    puts "Glad to see you again!"
  end

  def character
    puts "They're very #{super}"
  end

  def say_hello(name)
    #basic_greeting = super(name)
    basic_greeting = super
    puts "#{basic_greeting} Glad to see you"
  end
end

puts "------------"
per = Person.new
per.greeting
puts "------------"
fr = Friend.new
fr.greeting
fr.character
fr.say_hello "Quoc"
# Got it!

#OK. the 'super' keyword like an ordinary method call almost every respect
#for example if the method in overriden class return a value, so the 'super' keyword represent a value, too.
# we can pass the arguments into 'super' keyword like the method

#but 1 differ is:
