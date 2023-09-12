#variant 7
def fill_array(a)
  for i in 1..14 do
    a.push(rand(20))
  end
  a
end
def task1(a,c)
  b = []
  for i in 1..a.size-1 do
    for j in 1..c.size-1 do
      b.push(c[j]) if a[i] == c[j]
    end
  end
  b
end
a = []
c = []
fill_array(a)
fill_array(c)
b = task1(a,c)