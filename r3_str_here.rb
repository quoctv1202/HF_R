doc = <<HERE + <<THERE + "End now"
This is the first line,

And second line here
HERE
THERE
puts doc
puts doc[1]
5.times { puts "string".object_id }
=begin The result below:

47325830868820
47325830868720
47325830868660
47325830868600
47325830868540
=end

puts ?A

a = 0
puts "#{a += 1} " * 3

puts Encoding.list
