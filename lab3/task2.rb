def func(x)
  if x<=0 && x > -4
    ((x-2).abs/((x**2)*Math.cos(x)))**(1/7)
  elsif x<=12 && x > 0
    1/(Math.tan(x+(Math::E**x))/Math.sin(x)**2)**(2/7)
  else
    1/(1+x/(1+x/(1+x)))
  end
end

puts "Y(-5) = #{func(-5)}"
puts "Y(-2) = #{func(-2)}"
puts "Y(2) = #{func(2)}"
puts "Y(12) = #{func(12)}"
puts "Y(15) = #{func(15)}"



