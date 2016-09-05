# BUSINESS LOGIC

require 'sqlite3'

db = SQLite3::Database.new("movies.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movie_reviews(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    rating INT,
    recommended BOOLEAN,
    comments VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def new_review(db, name, rating, recommended, comments)
  db.execute("INSERT INTO movie_reviews (name, rating, recommended, comments) VALUES (?, ?, ?, ?)", [name, rating, recommended, comments])
end

#USER INTERFACE
