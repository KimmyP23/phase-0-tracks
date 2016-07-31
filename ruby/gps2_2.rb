# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#define method create_list
#declare the empty hash
#use .split(' ') to turn string into array
#iterate through array and put key-value pair into hash set quantity = 1
 # set default quantity
  # print the list to the console [can you use one of your other methods here?]
#.each do |key|
#  hash[key] = 1
#  put #{key} 1
# output: [what data type goes here, array or hash?]
#hash containing list of items w/ quantity(key-value pair)
  def create_list(string)
    list = {}
    string.split.each do|item| 
      list[item] = 1
    end
    list
  end
  
  grocery_list = create_list("carrots apples cereal pizza")


# Method to add an item to a list
# input: item name and optional quantity
# steps:
#add new key-value pair to hash
# output:
#an updated grocery list with new item and quantity

# def add_item(hash, item_name, qty)
#   hash[item_name] = qty
#   hash
# end

# puts add_item(grocery_list, "chocolate", 100)


# # Method to remove an item from the list
# # input: (hash,item_name)
# # steps:
# #search through hash for inputted item name, if item name is in hash, delete
# #otherwise, return statement: item not found
# # output:new hash with item deleted

# def delete_item(hash, item_name)
#   if hash.include?(item_name)
#     hash.delete(item_name)
#   else
#     puts "item not found"
#   end
#   hash
# end

# puts delete_item(grocery_list, "carrots")


# # Method to update the quantity of an item
# # input: hash, item_name, new_qty
# # steps:
#   # verify the item is there with include?
#   # if it;s there, reassign value
#   # else print error message
# # output: hash with updated qty

# def update_quantity(hash, item_name, new_qty)
#   if hash.include? item_name
#     hash[item_name] = new_qty
#   else
#     puts "Item not found"
#   end
#   hash
# end

# p update_quantity(grocery_list, "pizza", 10)


# # Method to print a list and make it look pretty
# # input: hash
# # steps:
#   # iterate through hash
#   # print statement with interpolation for each item
# # output: print statement

# def pretty_print(hash)
#   puts "Ilaria and Kimberly's grocery list:"
#   hash.each do |item, qty|
#     puts "#{item}: #{qty}"
#   end
# end
  
# pretty_print(grocery_list)

# add_item(grocery_list, "Lemonade", 2)
# add_item(grocery_list, "Tomatoes", 3)
# add_item(grocery_list, "Onions", 1)
# add_item(grocery_list, "Ice Cream", 4)
# delete_item(grocery_list, "Lemonade")
# update_quantity(grocery_list, "Ice Cream", 1)
# pretty_print(grocery_list)


=begin
  I learned that it is worth taking the time to think through the problem 
  by pseudocoding it. I felt that my partner and I were able to break down each
  part and really evaulate each method.

  We used a hash to key track of the items and quantities and it was really easy 
  to keep track of each item. 

  The method return that the last value or operation result in the method so for each
  method it is easy to use hash as the last line item.

  Making a new hash via a string that gets parsed out and assigned
  to the key / value pairs is much clearer. Functional decomposition
  in this challenge was a bit more straight forward for me and clearly
  a good way to go. Some of my earlier methods would have too many
  dependencies and became prone to bugging out if any changes were made. 

  I still have trouble keeping track of when I need to print a method or not. I felt
  like I kept running into that issue. 
  
end