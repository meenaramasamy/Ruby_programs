print "Enter principal amount:  \n"
p = gets.chomp.to_f
print "Enter the interest:  \n"
i = gets.chomp.to_f
print "Enter number of years:  \n"
n = gets.chomp.to_f
if (n>0)
nm = n*12
im = (i/100/12)
  c = (1+im)**nm
  mp = ((im*c)/(c-1))*p
  mp = mp.round(7)
print"Month#\tPayment Amount\tInterest\tPrincipal\tRemaining Balance\n"
j=1
while(j<=nm)
    imp = (im*p).round(7)
  pp = ((mp.abs)-imp) 
  pp = pp.round(7)
  p = (p-pp).round(7)
print "#{j}\t#{mp}\t#{imp}\t#{pp}\t#{p}\n"
 j+=1
end

 else
  print" enter the year 1 and more.."
end
