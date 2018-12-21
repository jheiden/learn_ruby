#write your code here


def add (a, b)
    added = a + b
  
  end
  
  def subtract (a, b)
    subtracted = a - b
  end
  
  def sum (arr)
    summed = 0
    i = 0
  while i < arr.length
    summed += arr[i]
    i = i + 1 # Increment counter
    end
    return summed
  end

  def multiply (numz)
    prod = 1
    numz.each {|n| prod *= n}
      return prod
    end
  
  def factorial (i)
    total = 1
    while i > 0
    total *= i
    i -= 1
    end
    return total
  end

  def power (base, exp)
    return base ** exp
  end


  puts multiply([2,2])
  puts add(0,0)
  puts subtract(1,4)
  puts multiply([2,2,2])
  puts factorial(0)
  puts power(2,2)
