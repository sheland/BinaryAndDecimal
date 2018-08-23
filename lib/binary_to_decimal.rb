# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array) # [0 1 1 0 0 1 1 1]
  power = binary_array.length - 1 # starts at 7
  decimal_value = 0

  binary_array.each do | x |
    decimal_value += x * 2**power
    power = power - 1
  end

  return decimal_value
end

my_array = Array.new(8) {rand(0..1)} #array of size 8

binary_to_decimal(my_array)
