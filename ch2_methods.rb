def sum(a, b)
  return a + b
end

puts "3 + 5 = #{sum(3, 5)}"

#optional parameters

def order_coffee(flavor, size = "medium", quantity = 1)
  if quantity == 1
    plural = "soda"
  else
    plural = "sodas"
  end
  puts "#{flavor} #{quantity} #{plural} - size: #{size}, is comming right up!"
end

order_coffee "orange"
order_coffee "apple", "large", 4

order_coffee "Grape", "", 4

#using_headlights parameter optional
def using_headlights(brightness = "low-beam")
  puts "Turning #{brightness} headlights!"
  puts "Watch out for deer."
end

using_headlights
using_headlights "far-beam"

#return keyword
def fuel_efficient(distance, gas_used)
  distance / gas_used
end

puts fuel_efficient(10, 2)
#puts fuel_efficient(0, 0)
#it'll get err while the gas_used = 0

def fuel_efficient_return(distance, gas_used)
  if gas_used == 0
    return 0.0
  else
    distance / gas_used
  end
end

puts fuel_efficient_return(0, 0)
