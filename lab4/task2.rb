#variant 1

def genMatr(n,m)
  matrix = []
  m.times {
    |i|
    row = []
    n.times {
      |j|
      if (i == j)
        row.push(1)
      else
        row.push(rand(10))
      end
    }
    matrix.push(row)
  }
  matrix
end

def task2(matrix,x)
  for i in 0..matrix.size-1
    for j in 0..matrix[0].size-1
      matrix[i][j] *= x
    end
  end
end
a = genMatr(4,5)
print a
task2(a,5)
puts
print a