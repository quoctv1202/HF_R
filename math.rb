=begin
    This way use for multi-line comment in Ruby
        Some Math operator
    + : plus
    - : minus
    * : asterisk (multiple) times
    / : slash
    % : modulo
    **: exponentiation
    < : less-than
    <=: less-than-equal
=end

puts "Now, I'll count my chickens: "
puts "Hens: #{12 + 36 / 6}"
rooster = 23
puts "Rooster: #{rooster}"

# so the #{} use for add variable or computation to string

puts "Let count the eggs: "
puts 3 + 2 + 1 - 2 + 4 % 5 - 1

puts 3 + 2 < 2 - 7

puts "3.0^3 = #{3.0 ** 3}"

puts "Is it right if Roosters < #{12 - 5} #{rooster < 12 - 5}"
puts "Because Roosters = #{rooster}"

puts "2 + 3 >= 5 is #{2 + 3 >= 5}"
