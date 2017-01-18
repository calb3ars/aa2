def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  array.inject(0,:+)
end

# def sum(array)
#   return 0 if array.empty?
#   result = array.first
#   array.drop(1).each do |el|
#     result += el
#   end
#
#   result
# end

def multiply(array)
  array.inject(:*)
end

# def multiply(array)
#   return nil if array.empty?
#   result = array.first
#   array.drop(1).each do |el|
#     result *= el
#   end
#   result
# end

def power(base, power)
  base ** power
end

def factorial(num)
  return 1 if num == 0 || num == 1
  num * factorial(num -1)
end
