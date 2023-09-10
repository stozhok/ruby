#variant 2
require 'bigdecimal'
def y(x,n,c)
  ((x ** 2) + (x * Math.sqrt(x ** 2 - c ** 2)))**(1/n) + (x**2 + 1)/(1/x+1/n) + (3*x+c**x)/(x+1)
end
def z(x)
  2*(1/Math.sin(4*x)-Math.tan((Math::PI*7)/2+4*x)) + Math.tan(5*Math::PI + x)
end

def f(x,n,c)
  case x
  when 2...n
    y(x,n,c)
  when n...2*n
    z(x)
  else
    return y(x,n,c) + z(x)
  end
end
def sub1(c,n)
  x = 1.0
  step = (n - 1)/(n + c)
  puts "step is #{step}"
  while x <= n
    puts "#{x} | #{y(x, n, c).round(10)}"
    x += step
  end
end

def sub2(c, n)
  x = Math::PI / n
  step = (Math::PI - x)/((3/2)*n + c)
  puts "step is #{step}"
  while x <= Math::PI
    puts "#{x} | #{z(x)}"
    x += step
  end
end

def sub3(c, n)
  x = 2.0
  step = (c - 2)/(2 * n)
  puts "step is #{step}"
  while x <= c
    puts "#{x} | #{f(x, n, c)}"
    x += step
    return if x == c && step == 0
  end
end

puts "Task 5"
print "Enter N: "
n = gets.chomp.to_f

print "Enter c: "
c = gets.chomp.to_f

puts "Subtask 1:"
puts "x  |  Y"
sub1(c, n)


puts "\nSubtask 2:"
puts "x  |  Z"
sub2(c, n)

puts "\nSubtask 3:"
puts "x  |  F"
sub3(c, n)