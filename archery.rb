#theta=30 * 3.14 / 180
def deg(n)
	  theta=( n * Math::PI / 180 )
	  return theta.round(5)
end
v=1000
g=9.81
y=0
i=0
count = 0
big = 0
dis = Array.new(20)
while (i<=90)
sine = Math.sin(deg(i))
cossine = Math.cos(deg(i))
c = Math.sqrt(((v**2)*(sine**2)) + (2*g*y))
 a = (v * cossine)/g
 b= (v * sine)
	dis[i] = a *(b + c)
print " the distance in angle #{i}: #{dis[i]}\n"
if dis[i]>big
big = dis[i]
count = i
end
i = i+5
end
print "\nThe farthest angle is: #{count} and the distance is: #{big} Meters"















        

