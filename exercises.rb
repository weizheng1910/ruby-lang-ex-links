def solveMeFirst (a, b)
  return a + b
end

def simpleArraySum(ar)
	return ar.reduce(:+) 
end

def simpleArraySum(ar)
  return ar.reduce(0) { |sum, num| sum + num }
end

def aVeryBigSum(ar)
  lines_array = ar.split("\n")
  array_to_be_summed = lines_array[1].split(" ")
  int_array_to_be_summed = array_to_be_summed.map(&:to_i)
  return int_array_to_be_summed.reduce(:+)
end

p aVeryBigSum("5 
1000000001 1000000002 1000000003 1000000004 1000000005
	")

def diagonalDifference(arr)
  size = arr.length
  diagonallyDownSum = 0
  diagonallyUpSum = 0
  (0...size).each {|n| diagonallyDownSum+=arr[n][n]}
  #last index is size - 1
  (0...size).each {|n| diagonallyUpSum+=arr[n][(size-1-n)]}
	return (diagonallyDownSum - diagonallyUpSum).abs 
end

diagonalDifference [[1,1,4],[2,2,2],[8,3,3]]

def plusMinus(arr)
	array_length = arr.length
	array_length_float = array_length.to_f()

	above_zero = arr.select {|elem| elem>0}
	equal_zero = arr.select {|elem| elem==0}
	below_zero = arr.select {|elem| elem<0}

	above_zero_length = above_zero.length/array_length_float
	below_zero_length = below_zero.length/array_length_float
	equal_zero_length = equal_zero.length/array_length_float

	p above_zero_length
	p below_zero_length
	p equal_zero_length
end

plusMinus([-4,3,-9,0,4,1])

def staircase(n)
	y = n + 1
	string = ""
	# So that the line below will be 1 up to including n
	(1...y).each { |x| puts " "*(n - x) + "#"*(x)  }	
end

def miniMaxSum(arr)
		a = arr.max(4).reduce(:+)
		b = arr.min(4).reduce(:+)

		print a," ",b
end

def birthdayCakeCandles(ar)
    highest_value = ar.max
    x = ar.select {|num| num == highest_value}
    return x.length 
end

puts birthdayCakeCandles([4,4,4,1,3])


def timeConversion(s)

    a = s.split("");

    if a[8] == "P"
      a[1] = a[1].to_i + 12 
    end

    if a[1] > 10
      a.shift()
    end
    
    a.pop()
    a.pop()
    y = a.join('')
    return y
end

timeConversion('07:05:45PM')
