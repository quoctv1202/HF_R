def are_you_sure?
  puts "Greeting"
  confirm = false
  while true #&& confirm == false
    puts "Are you sure [y/n]?"
    respond = gets
    case respond
    when /^[yY]/
      confirm = true
    when /^[nN]/
      confirm = false
    end
  end
end

#are_you_sure?

puts "test" * 5

a = 3_1_4_1_5_9_2_6
arr = ["one", "two", "three"]
b = -7 / 3
puts a
puts arr[-1]
puts b

str = 'Won\'t you read O\'Reilly\'s book?'
puts str

long = "This is a long string" \
", we need it show in one line output" \
" so we use backslash"
puts long + " \u0fac"
