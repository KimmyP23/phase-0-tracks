#Release 1: Pseudocode
def create_list(string)
  list = Hash.new(1)
  string_array = string.split
  string_array.each do |item|
    list[item] = 1
  end
  list
end

grocery_list = create_list("carrots apples cereal pizza")
puts grocery_list

def add_item(list, item_name, quantity)
  list[item_name] = quantity
  list
end

puts add_item(grocery_list, "cookies", 10)

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















