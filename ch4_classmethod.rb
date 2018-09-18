class MyClass
  def self.classmethod(p1, p2)
    puts "This is the class method!"
    puts "Your params : #{p1} and #{p2}"
  end
end

MyClass.classmethod("Quoctv1202", "RoR")
puts "------------------------------"
#----This is complete code for chap 4-----

class Employee
  attr_reader :name, :age

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

  def initialize(name = "Anonymous")
    self.name = name
  end

  def print_name
    puts "Name: #{self.name} "
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "This salary: #{salary} is invalid!"
    end
    @salary = salary
  end

  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    self.print_name
    pay_for_period = format("%.2f", (@salary / 365.0) * 14)
    puts "Pay this Period: #{pay_for_period}"
  end
end

class HourlyEmployee < Employee
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.10, 33)
  end
  def self.cashier(name)
    HourlyEmployee.new(name, 20.35, 34)
  end
  attr_reader :hourly_wage, :total_time

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "This hourly_wage: #{hourly_wage} is invalid!"
    end
    @hourly_wage = hourly_wage
  end

  def total_time=(total_time)
    if total_time < 0
      raise "This total_time: #{total_time} is invalid!"
    end
    @total_time = total_time
  end

  def initialize(name = "Anonymous", hourly_wage = 0.0, total_time = 0)
    super(name)
    self.hourly_wage = hourly_wage
    self.total_time = total_time
  end

  def print_pay_stub
    self.print_name
    pay_for_period = hourly_wage * total_time * 2
    puts format("Pay for this period: %.2f", pay_for_period)
  end
end

affe = SalariedEmployee.new("Affe Alan", 25000)
affe.print_pay_stub

alex = HourlyEmployee.security_guard("Alex Paul")
alex.print_pay_stub
puts "---------***---------"
puts "---------###---------"
puts "-----***&&&***----"
