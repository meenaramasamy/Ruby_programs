print "Enter the no. of rooms in the home"
nroom = gets.chomp.to_i
sum=0
rl=Array.new
rb=Array.new
area=Array.new
for i in 1..nroom
   print "enter the room #{i} length and breadth: "
   rl[i] = gets.chomp.to_f
   rb[i] = gets.chomp.to_f
    area[i] = rl[i] * rb[i]
   sum = sum + area[i]
 end
 for i in 1..nroom
   print "\nArea of room#{i} is : %9.3fsqft\n" %[area[i]]
end
puts "\nTotal Area of the home is : %9.3f sqft" %[sum]