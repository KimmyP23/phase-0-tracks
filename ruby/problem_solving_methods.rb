# Release 5.6.0

# Declare method that takes in an array and an integer
def search_array(array, num)
  # Turns the array into a hash with index as values
  hash = Hash[array.map.with_index.to_a]
  # Returns the hash if hash contains integer
  return hash[num]
  # Otherwise, returns nil by default
end

# Our sample input array
arr = [42, 89, 23, 1]
  
p search_array(arr, 1)
p search_array(arr, 90)

# Release 5.6.1

#create Fibonacci method
def fib(num)
#Created empty array to pass Fib sequence into
  fib_array = []
#Counted from 0 to inputed number to create iteration
  0.upto (num - 1) do |n|
#If n is less than 2 (0,1), add n to array 
    if n < 2
      fib_array << n
#If n is greater than 2, add the previous two elements of the array to get next value and add to the sequence in array
    else
    fib_array << (fib_array[-1] + fib_array[-2])
    end
  end
    fib_array
end

puts fib(6)

#use fib_array.last when you just want to check the last element in the array
# p fib(100) == 218922995834555169026