print"enter the string \n"
text=gets.chomp
words=text.split(" ")
special = "?<>',?[]}{=-)(*&^%$#`~{}\""
regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/
words.each do |word|
 if word =~ /\d+/
	print " #{word}"
	elsif word =~ regex
     afterreg = word.match(/\w+/)
     afterreg = afterreg.to_s
     safterreg = afterreg.split("")
     c =  safterreg[1..-1].join("")
	 d = c + "#{safterreg[0]}ay"
     print word.sub!(afterreg,d)
	 else
	  print " #{word[1..-1]}#{word[0]}ay"
 end
   
   
  
   end