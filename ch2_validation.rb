=begin
* what happen when the use typed the ages of an object by negative number
it completely wrong in the real life but, our program still accept it!
So, to prevent this curcumtancy, we have some validation in atrr_accessor methods
=end

class Dog
  def name=(name)
    if name == ""
      #puts "Invalid name!"
      raise "Invalid name, it can't be blank"
    end
    @name = name
  end

  def name
    @name
  end

  def age
    @age
  end

  def age=(age)
    if age == 0
      #puts "Age must be a positive number"
      raise "Age must be a positive number"
    end
    @age = age
  end

  def details
    puts "Dog name:#{@name} \t Ages:#{@age}"
  end
end

pop = Dog.new
print "Name: "
pop.name = gets.chomp
print "Ages: "
pop.age = gets.to_i
pop.details

#but if the name and ages not set, the details method still export output with 2 blank space! ??
# ez way to solve this problem, R have one built-in method call 'raise', Now attempt to it, make an effort/ make an attempt

#'raise an issue '

p pop.age

=begin
* Sumary
End of ch2 we add some tool for ours toolbox
-method
-class
-instance
-local var
-instance var
-instance method
-get/set by attr_r ,attr_w , attr_accessor
-return statement
-p and raise built-in method
=end
