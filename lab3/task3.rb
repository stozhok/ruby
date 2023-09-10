def var1(x)
  sum = 1.0
  t = 0
  for i in 1..10 do
    sum += (-1)**i * ((i+1).to_f/(i+2)) * x**i
  end
  return sum
end

def var2
  sum = 0
  for i in 0..8 do
    sum += 1.0 / 3**i
  end
  return sum
end
puts "Result 1 = " + var1(2).to_s
puts "Result 2 = " + var2.to_s
