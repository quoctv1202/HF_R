# In this chapter we will learn about initializing instances and
# ---initialize method: let we pass in a bunch of arguments to set up an object data at the time we create it

class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "This salary: #{salary} is invalid!"
    end
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = format("%.2f", (@salary / 365.0) * 14)
    puts "Pay this Period: #{pay_for_period}"
  end
end

amy = Employee.new
amy.name = "Amy Brake"
amy.salary = 50000

kara = Employee.new
kara.name = "Kara Oren"
kara.salary = 36000

amy.print_pay_stub

#the thing is, the ammount of salary off all employees will make extremely angry workforce
# :))) => time to know, use 'float' and 'fixnum' numeric class

# in Ruby Fixnum represents Intergers

puts amy.salary.class
puts Employee.class

#format for number printing

puts format("The rounded to two decimal places of: %f is %.2f", 3.141516, 3.141516)
