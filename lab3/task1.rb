#variant 2

def logic1(a,b,c,x,y,z)
  puts "Logic:"
  puts "a) ￢(A⋁B)⋀(A⋀¬B) = #{!(a||b)&&(a&&!b)}"
  puts "b) (Z≠Y)≤(6≥Y)⋀A⋁B⋀C⋀X≥1.5 = #{(z!=y)==(6>=y)&&a||b&&c&&x>=1.5}"
  puts "c) (8-X*2≤Z)⋀(X²>=Y²)⋁(Z≥15) = #{(8-x*2<=z)&&(x**2>=y**2)||(z>=15)}"
  puts "d) X>0⋀Y<0⋁Z≥(X*Y-Y/X)-(-Z) = #{x>0&&y<0||z>=(x*y-y/x)-(-z)}"
  puts "e) ¬(A⋁B⋀¬(C⋁(¬A⋁B))) = #{!(a||b&&!(c||(!a||b)))}"
  puts "f) X²+Y²≥1⋀X≥0⋀Y≥0 = #{x**2+y**2>=1&&x>=0&&y>=0}"
  puts "g) (A⋀(C⋀B<>B⋁A)⋁C)⋀B = #{(a&&(c&&b==b||a)||c)&&b}"
end
#&& and    || or
def logic2(x,p)
  puts "logic2 = #{(Math.log(x)<x)&&!p&&(Math.sqrt(x)>x**x)||(2**x==x)}"
end

logic1(true,true,false,12,3,-2)

logic2(4,false)