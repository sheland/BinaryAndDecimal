# A method named `binary_to_decimal` that creates an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# Print out the array so that it appears as a binary number.
# Calculate the decimal value for this binary number using the algorithm
# you devised in class. Print out the decimal value and return this value.
def binary_to_decimal
  count = 8
  binary_array = Array.new(count)
  count.times do |i|
    binary_array[i] = rand(2)
  end

  puts "The binary number is: "
  count.times do |i|
    print binary_array[i]
  end
  puts

  decimal = 0
  binary_array.reverse!
  count.times do |i|
    decimal += (2 ** i) * binary_array[i]
  end
  puts "The decimal equivalent for it is: #{decimal}."
  return decimal
end

num = binary_to_decimal()
puts "The decimal number is #{num}. The original binary number should have been #{num.to_s(2)}."
