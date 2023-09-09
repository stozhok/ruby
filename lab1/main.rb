#variant 1

puts "Enter x,a,b,c,d,s: "

x = gets.chomp.to_f
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
d = gets.chomp.to_f
s = gets.chomp.to_f

res = (((Math.log(x**3)**2+0.375*d)/(Math::E**(x**2)*Math.sqrt(c+a)))+((Math.tan(Math::PI/6)-(x**(3/s)))/(0.316*b*c-(a**20)).abs))

puts "Result: " + res.to_s