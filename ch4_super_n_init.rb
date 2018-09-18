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
  attr_reader :hourly_wage, :total_time

  def initialize(name = "Anonymous", hourly_wage = 0.0, total_time = 0)
    super(name)
    self.hourly_wage = hourly_wage
    self.total_time = total_time
  end

  def print_pay_stub
    self.print_name
  end
end

salaried = SalariedEmployee.new("Jan", 1500)
salaried.print_pay_stub
