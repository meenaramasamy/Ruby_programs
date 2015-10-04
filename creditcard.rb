def validcheck(cnum)
sum = 0
  ccnum = cnum.to_s.split("")
  ccnum = ccnum.reverse
  ccnum.each_with_index do |n,i|
     if (i%2 == 1)
       sum += n.to_i*2 >9 ? n.to_i*2-9 : n.to_i*2
     else
       sum += n.to_i
      end
  end 
  
  if (sum % 10) == 0
    return 1
   else 
    return 0
   end	
end

print "Enter the credit card number"
cnum = gets.chomp
cnum = cnum.gsub(/\D/,'').to_i
len = cnum.to_s.length
credit_num = cnum.to_s.split("")
if (len == 16) && (credit_num[0]=="4")
validity = validcheck(cnum)
   if validity == 1
   print "It's a valid Visa card"
   else
   print "Invalid Visa credit card number"
   end 
elsif ((len == 16) &&(credit_num[0] == "5") && (("1".."5") === credit_num[1]))
   validity = validcheck(cnum)
   if validity == 1
   print "It's a valid Master card"
   else
   print "Invalid Master credit card number"
   end 
elsif ((len == 15) && (credit_num[0] == "3") && ((credit_num[1] == "4")||(credit_num[1] == "7")))
   validity = validcheck(cnum)
   if validity == 1
   print "It's a valid AMEX card"
   else
   print "Invalid AMEX credit card number"
   end 
else
    print "Invalid Number"
     
end
