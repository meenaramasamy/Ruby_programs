hashcc={}
File.open('country_capital.txt','r')do |file|
 file.each_line do |line|
  line_data = line.split(/,|\n/)
   line_data[0].gsub!(/\A"|"\Z/, '')
  line_data[1].gsub!(/\A"|"\Z/, '')
  hashcc[line_data[0]] = line_data[1]
  end
  end

hashcc = hashcc.to_a
randarray=Array.new
i=0
while(i<5)
cc=hashcc[rand(hashcc.size)]
if randarray.include?(cc)
i -= 1
else
randarray[i]=cc
i +=1
end
end

correct =0
wrong =0
country_cap = Hash[randarray.map {|key, value| [key, value]}]
print "Are you going to take country capital quiz(y/n)"
choice = gets.chomp
if choice == "y"
country_cap.each {|cou,cap|
print "Enter the capital for #{cou}: "
ans = gets.chomp.downcase
    if ans == cap.downcase 
     puts "Correct"
	 correct+=1
    else
     puts "Wrong"
	 wrong+=1
	end
		}
	print "you answered #{correct} correct and  #{wrong} wrong"
else
print "Thankyou Try again"
end

