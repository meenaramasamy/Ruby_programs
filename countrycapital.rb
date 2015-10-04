country_cap = {Afghanistan: "Kabul",
                Belgium: "Brussel",
				China: "Beijing",
				Egypt: "Cairo",
				France: "Paris",
				Cuba: "Havana",
				India: "New Delhi",
				Japan: "Tokyo",
				Italy: "Rome",
				Malaysia: "kualalambur"}
print "Are you going to take country capital quiz(y/n)"
choice = gets.chomp
correct=0
wrong=0
if choice == "y"
country_cap.each {|cou,cap|
print "Enter the capital for #{cou}: "
ans = gets.chomp.downcase
    if ans == cap.downcase 
     puts "correct"
	 correct+=1
    else
     puts "wrong"
	 wrong+=1
	end
	
	}
	print "you answered #{correct} correct and #{wrong} wrong"
else
print "Thankyou Try again"
end
