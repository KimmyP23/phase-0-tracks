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