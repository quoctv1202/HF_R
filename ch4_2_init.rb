class Employee
  attr_reader :name, :age, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end
    @name = name
  end

  def age=(age)
    if age < 0
      raise "This salary: #{age} is invalid!"
    end
    @age = age
  end

  def salary=(salary)
    if salary < 0
      raise "This salary: #{salary} is invalid!"
    end
    @salary = salary
  end

  def initialize(age, salary = 0.0, name = "Anonymous")
    self.age = age
    self.name = name
    self.salary = salary
  end

  def print
    puts "Name: #{@name}, Age: #{@age}"
  end

  def print_pay_stub
    self.print
    pay_for_period = format("%.2f", (@salary / 365.0) * 14)
    puts "Pay this Period: #{pay_for_period}"
  end
end

ini = Employee.new(22, 50000, "QX")
ini.print
ini.print_pay_stub
puts "---------------"
bc = Employee.new(22, 1200.12)
bc.name = "Alex"
bc.print
puts bc.name

#bad news! currently the vailidation will no longer affect when we have initialize method
# whether we can integrate initialize with validation or do something else??
# Ruby is try to follow the DRY principle where DRY stand for Don't Repeat Yourself.
#- It means we should avoid duplicating code wherever possible, as it's likely to result reduce in bugs
# I just know about 'self' , call between method within instance

puts "-----------****--------"

class HourlyEmp < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "This salary: #{hourly_wage} is invalid!"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raihours_per_weekse "This salary: #{hours_per_week} is invalid!"
    end
    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    self.print
    pay_for_period = hourly_wage * 1.0 * hours_per_week * 2
    puts format("Pay this period: %.2f", pay_for_period)
  end
end

adam = HourlyEmp.new(20, 2000, "abc")
adam.hourly_wage = 19.6
adam.hours_per_week = 35
adam.salary = -23
adam.print_pay_stub

#not good! cuz the initialize method just redefine
