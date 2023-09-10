#variant 7

value = 1111100011001

def toDec(val)
  sum = 0
  v = val.to_s.split('').map(&:to_i).reverse
  for i in 0..v.size-1 do
    sum += 2**i if v[i] != 0
  end
  return sum
end
toDec(value)
puts "Result: " + toDec(value).to_s
