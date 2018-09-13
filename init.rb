class MyClass
  attr_accessor :name, :age, :salary

  def initialize(age, salary = 0.0, name = "Anonymous")
    @name = name
    @age = age
    @salary = salary
  end

  def print
    puts "Name: #{@name}, Age: #{@age}, Salary: #{@salary}"
  end
end

ini = MyClass.new(22)
ini.print

bc = MyClass.new(22, 1200.12)
bc.name = "Alex"
bc.print
#puts bc.name
