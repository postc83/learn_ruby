# write your code here
def add(num_one, num_two)
  num_one + num_two
end

def subtract(num_one, num_two)
  num_one - num_two
end

def sum(arr)
  total = 0
  arr.each { |num| total += num }
  total
end

def multiply(arr)
  total = arr[0]
  for num in 1...arr.count
    total *= arr[num]
  end
  total
end

def power(num_one, num_two)
  num_one ** num_two
end

def factorial(num)
  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end
