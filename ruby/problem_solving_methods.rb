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

p fib(6)

#use fib_array.last when you just want to check the last element in the array
# p fib(100) == 218922995834555169026

#Release 5.6.2
def bubble_sort(array)
  #total number values in loop
  n = array.length
  loop do
    #iterate through entire array and chech each element
    #and compare 
    #example array
    #[1, 4, 1, 3 , 4, 1, 3, 3]
    #compare 1 & 4 --> 1 is less than 4, stays the same
    #[1, 4, 1, 3 , 4, 1, 3, 3]
    #compare 4 to 1 --> 4 is greater than 1, swap numbers
    #[1, 1, 4, 3 , 4, 1, 3, 3]
	#compare 4 to 3 --> 4 is great than 3, swap numbers
    #[1, 1, 3, 4 , 4, 1, 3, 3]
    #compare 4 to 4, equal so stay in place
    #[1, 1, 3, 4 , 4, 1, 3, 3]
    #compare 4 to 1, 4 is great than 1, swap numbers
    #[1, 1, 3, 4, 1, 4, 3, 3]
    #compare 4 to 3, 4 is great than 3, swap numbers
    #[1, 1, 3, 4 , 1, 3, 4, 3]
    #compare 4 to 3, 4 is great than 3, swap numbers
    #[1, 1, 3, 4 , 1, 3, 3, 4]
    #final result
    #boolean swap set to false to break us out of our loop
    swapped = false
    #iterate through one minus the length of the array
    (n-1).times do |i|
      #if the array[i] is great than the proceeding element
      if array[i] > array[i + 1]
        #then we switch array order by setting order to the swapped order
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
    array
end

numbers = [1, 4, 1, 3 , 4, 1, 3, 3]
p bubble_sort(numbers)



