#variant 7

p = 4
t = 16
r = 8

result = p**(r*(1-p**(-1*t)))

puts "Result: " + result.to_s

