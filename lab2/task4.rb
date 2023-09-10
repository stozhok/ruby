#variant 7

value = 332

def toBi(val)
  res = ""
  while val > 0
    res += (val % 2).to_s
    val /= 2
  end
  return res.reverse
end
puts "Result: " + toBi(value)