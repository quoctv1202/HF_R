
print "Your name: "
name = gets
puts "Welcome #{name}"
key = rand(20) + 1

puts name.inspect
=begin
    
* the inspect method use for inspecting object, converts to a string representation
it will reveal aspects of the object that don't normally show up in program output

*for another way 'p method' is same way with [puts obj.inspect]
the result below

=end

p name

#using chomp method to removing newline character

namechomp = name.chomp

p namechomp

puts key
puts rand(10) + 1
turn = 5
out = false

=begin
while turn > 0 && out == false
  turn -= 1
  print "Choose the number in 1-20: "
  guess = gets.to_i

  if guess > key
    puts "Greater!"
    puts "You have #{turn} more times to try!\n---------------\n\n"
  elsif guess < key
    puts "Less than!"
    puts "You have #{turn} more times to try!\n---------------\n\n"
  else
    puts "correct!"
    out = true
  end
  unless turn != 0 || out == true
    out = true
    puts "Game over. the number is #{key}"
  end
end

=end

#------------------Better code------------

until turn == 0 || out
  turn -= 1
  print "Choose the number in 1-20: "
  guess = gets.to_i

  if guess > key
    puts "Greater!"
    puts "You have #{turn} more times to try!\n---------------\n\n"
  elsif guess < key
    puts "Less than!"
    puts "You have #{turn} more times to try!\n---------------\n\n"
  else
    puts "correct!"
    out = true
  end
  unless turn != 0 || out == true
    out = true
    puts "Game over. the number is #{key}"
  end
end
