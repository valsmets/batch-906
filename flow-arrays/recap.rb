# define a method that sums up two numbers
def sum_two_numbers(num1, num2)
  sum = num1 + num2
  # p num1.class
  return sum
end

# REFACTOR
def sum_two_numbers(num1, num2)
  num1 + num2
end

puts sum_two_numbers(5, 2)
