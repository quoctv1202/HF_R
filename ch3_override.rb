class Person
  def name=(val)
    @storage = val
  end

  def name
    @storage
  end
end

class Employee < Person
  def salary=(val)
    @storage = val
  end

  def salary
    @storage
  end
end

emp = Employee.new
emp.name = "John"
emp.salary = 3000
puts emp.name

#Output : emp.name = 3000
#Because anytime we assign the salary val, the name attribute also change, they are both using same instance variable @storage
#-------------
#overriding methods using when superclass's behavior isn't what you need in the subclass, inheritance give you this method

class Camera
  def load
    puts "Winding film."
  end

  def take_picture
    puts "Triggering shutter."
  end
end

class DigitalCamera < Camera
  def load
    puts "Inserting memory card."
  end
end

cam = Camera.new
cam.load
cam.take_picture

digcam = DigitalCamera.new
digcam.load
digcam.take_picture
