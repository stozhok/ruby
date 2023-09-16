#variant 3

class Student
  attr_reader :house, :surname, :num, :street
  def initialize(surname,street,house,num)
    @surname = surname
    @street = street
    @house = house
    @num = num
  end
end

arr = [Student.new('a','aa',5,3),
       Student.new('b','aa',3,2),
       Student.new('c','ab',1,9),
       Student.new('d','aa',5,5)
]
def task1(arr,n)
  res=0
  for i in 0..arr.size-1
    if arr[i].street == n
      res +=1
      end
  end
  res
end
puts "Task1: #{task1(arr,'aa')}"

def task2(arr, h)
  res = []
  for i in 0..arr.size-1
    if arr[i].house == h
      res.push(arr[i].surname)
    end
  end
  res
end
puts "Task2: #{task2(arr,5)}"