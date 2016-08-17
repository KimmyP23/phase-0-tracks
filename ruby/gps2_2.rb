#Release 1: Pseudocode
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Declare an empty hash
  # SPLIT the string on spaces into an array
  # Iterate through the array and set each item as a hash key
  # set default quantity to 1
  # print the list to the console
# output: [hash with items as keys and quantities set to 1]

# Method to add an item to a list
# input: list, item name and optional quantity
# steps: add a new key/value pair
# output: new list?

# Method to remove an item from the list
# input: list, item to be removed
# steps:Check to see that item is in list, then delete corresponding key.  Print error message if item isn't found.
# output: new list?

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: Check to see that item is in list, set new quantity.  Print error message if item isn't found.
# output: new list with new quantity

# Method to print a list and make it look pretty
# input: list
# steps: iterate through the list and print each item with quantity
# output: to console, pretty list


def create_list(string)
  list = {}
  string.split.each do |item|
    list[item] = 1
  end
  list
end

grocery_list = create_list("carrots apples cereal pizza")
puts grocery_list

def add_item(list, item_name, quantity=1)
  list[item_name] = quantity
  list
end

puts add_item(grocery_list, "cookies", 10)
puts add_item(grocery_list, "watermelon")

def remove_item(list, item_name)
  if list.has_key?(item_name)
    list.delete(item_name)
  else
    puts "Item not found"
  end
  list
end

puts remove_item(grocery_list, "carrots")

def update_quantity(list, item_name, new_quantity)
  if list.has_key?(item_name)
    list[item_name] = new_quantity
  else
    puts "Item not found"
  end
  list
end

puts update_quantity(grocery_list, "pizza", 20)

def print_list(list)
  puts "Kathrine and Kimberly's grocery list:"
  list.each{|item, quantity|puts "#{item}: #{quantity} qty"}
end

print_list(grocery_list)


=begin
  I learned that it is worth taking the time to think through the problem 
  by pseudocoding it. I felt that my partner and I were able to break down each
  part and really evaulate each method and it made making out solution much easier.

  We used a hash to key track of the items and quantities and it was really easy 
  to keep track of each item. 

  The method return that the last value or operation result in the method so for each
  method it is easy to use hash as the last line item.

  Making a new hash via a string that gets parsed out and assigned
  to the key / value pairs is much clearer. Functional decomposition
  in this challenge was a bit more straight forward for me and clearly
  a good way to go. Some of my earlier methods would have too many
  dependencies and became prone to bugging out if any changes were made. 

  The CRUD acronym was definitely something I would like to go over again. For this challenge,
  I felt like I did a good job of creating, adding, deleting, but I definitely need to clear up 
  what is best practice for refactoring.
end















