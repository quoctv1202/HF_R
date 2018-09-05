puts"xin chao the gioi"
a= 4*4
puts a
for value in 1..10 do
    puts value+3
end

puts Math.sqrt(9)

class Gear
    attr_reader :chainring, :cog
    def initialize (chainring, cog)
        @chainring=chainring
        @cog=cog
    end
    def ratio
        chainring/cog.to_f
    end
end

puts Gear.new(24,4).ratio
#comment

print 'hello world'
puts " This is the difference"
#print se in tren 1 dong, puts = cong them line break

puts "Hi # there"

