#variant 3
def integrate_rectangle(a, b, n, dx = (b - a) / n)
  x = a + dx / 2
  sum = 0
  (1..n).each {
    y = yield(x)
    sum += dx * y
    x += dx
  }
  sum
end
def integrate_trapezoid(a, b, n, dx = (b - a) / n)
  x = a + dx
  sum = dx * (yield(a) / 2 - yield(b) / 2)
  loop {
    y = yield(x)
    sum += dx * y
    x += dx
    break if x > b
  }
  sum
end

def f1(x)
  Math.sqrt((Math::E**x)-1)
end
def f2(x)
  (Math::E**x)*Math.sin(x)
end
x = integrate_rectangle(0.2, 2.1, 100000.0) {|x| f1(x)}
puts x
x = integrate_trapezoid(0.2, 2.1, 100000.0) {|x| f1(x)}
puts x

x = integrate_rectangle(0.0, Math::PI/2, 100000.0) {|x| f2(x)}
puts x
x = integrate_trapezoid(0.0, Math::PI/2, 100000.0) {|x| f2(x)}
puts x