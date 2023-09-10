#variant 2
class Integer
  def fact
    (1..self).reduce(:*)
  end
end

def task1
  res = 0
  for i in 2..10 do
    res += (((2*i)-1).fact.to_f / (2*(i+1)).fact) ** (i*(i+1))
  end
  res
end

def task2
  res = 0
  n = 1
  for i in 0..10
    res +=  (( 1.0 /  (1 + 2 * i)) * n)
    n *= -1
  end
  res
end

def task3
  res = 0
  for i in 1..10
    res += ((3*i-1).fact*(2*i-1).fact).to_f / ((3*i).fact*3**(2*i)*(2*i).fact)
  end
  res
end

puts "1 Result = " + task1.to_s
puts "2 Result = " + (Math::PI/4).to_s + " ? " + task2.to_s
puts "3 Result = " + task3.to_s