# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)
## how do we take relational data --> and use it in an OO language(take the data and make it useful)


# require gems
# gem: prewritten ruby and require the gem -- bridge the gap between the ruby program and database

#require --access something that is installed in our system
require 'sqlite3'
require 'faker'

# create SQLite3 database
# store it in a variable
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true

# learn about fancy string delimiters
# declaring a string
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
# calling: pass our string in to execute method
db.execute(create_table_cmd)

# add a test kitten
# execute directly
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

