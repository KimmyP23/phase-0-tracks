#Release: 0 create method that takes a block
def method_block(str)
  #print string
  puts str
  #yield block without parameters
  yield
end
# #run code with block; no parameters
method_block("Hello there") {puts "Testing our block"}

def method_block(str)
  name1 = "Kimberly"
  name2 = "Greg"
  puts str
  yield(name1, name2)
end

puts method_block("Hello there") { |name1, name2| puts "Testing our block #{name1} and #{name2}"}

