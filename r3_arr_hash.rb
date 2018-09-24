a = 5
b = 6.2
c = "Hello"
puts a.class
puts a.class.superclass
puts b.class
puts b.class.superclass
puts b.class.superclass.superclass
puts c.class
puts c.class.superclass
puts c.class.superclass.superclass
puts c.class.superclass.superclass.superclass

#nil represent for nothing, that represent for absence of a value

empty = Array.new
nils = Array.new(3)  #create 3 nil element
ones = Array.new(5, 1) #create 5 element = [1,1,1,1,1]
copy = Array.new (ones)
incr = Array.new(3) { |a| a + 1 } #[1, 2, 3]

incr.each do |single|
  puts single
end

#ranges

for i in 1...10
  puts i
end

a = "Lorem ipsum dolor sit ame" =~ /L/
puts a
puts "---------"

puts "false" ? "true" : "false"
puts "" ? "true" : "false"
puts nil ? "true" : "false"
puts false ? 1 : 2

puts "-----"
puts 0 ? "true" : "false"

a = 9
b = 2
x = a ||= b
puts x
puts a
puts b

puts "----------------"
puts "function" =~ /fun/
puts "----------------"
puts "function" =~ /dinosaurs/

puts "----------------"
c = 9
d = 6
e = c &&= d
puts c, d, e
puts 6 && 8

puts "----------------"
x = 10
while x >= 0
  puts x
  x = x - 1
end
puts "------****--------"

i = 10
until i < 1
  puts i
  i = i - 1
end

# Print the keys and values in a hash
hash = {:a => 1, :b => 2, :c => 3}
for key, value in hash
  puts "#{key} => #{value}"
end

a = 10
loop do
  a -= 1
  print "#{a}"
  break if a < 2
end

puts "*********"

def get_value(value = 1000)
  value
end

x = get_value(nil)
p x

def get_value(value = 1000)
  value
end

x = get_value(nil)

puts x

puts (1..20).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }