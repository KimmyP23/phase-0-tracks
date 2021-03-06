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
# Ask user about new movie to review
puts "Welcome to Movie Reviewer - where the only movie critic's opinion that matters is YOURS!"
puts "\nWould you like to add a new movie review? (yes/no)"
new_movie = gets.chomp

while new_movie != "no"
  puts "What movie did you see?"
  new_movie = gets.chomp

  puts "On a scale from 1-5, what would you rate the movie?"
  user_rating = gets.chomp.to_i

    until user_rating > 0 && user_rating <= 5
      puts "Oh boy, your rating is off the charts! No, but seriously, it's off the chart. Please pick a number between 1-5"
      user_rating = gets.chomp.to_i
    end

  puts "Would you recommend the movie to a friend? (yes/no)"
  user_recommendation = false
  until user_recommendation
    recommendation_response = gets.chomp
    if recommendation_response.downcase == "yes"
      user_recommendation = "true"
      true
    elsif recommendation_response.downcase == "no"
      user_recommendation = "false"
      true
    else
      puts "I'm sorry, I didn't understand your response, please answer 'yes' or 'no'"
    end
  end

  puts "Any additional thoughts/comments about the movie?"
  comments_response = gets.chomp
  if comments_response.downcase == "no" || comments_response == ""
    user_comments = "N/A"
  else user_comments = comments_response
  end

  # Add new review to movies database
  new_review(db, new_movie, user_rating, user_recommendation, user_comments)
  puts "\nWould you like to add a new movie review? (yes/no)"
  new_movie = gets.chomp.downcase
end

loop do
  puts "\nSelect a number from the list below to view your movie reviews. When finished, type '0'"
  puts "\n1. View all reviews \n2. View all recommended movies \n3. View all movies sorted by ranking"
  list_select = gets.chomp.to_i
  break if list_select == 0

  if list_select == 1
    movie_list = db.execute("SELECT * FROM movie_reviews")
  elsif list_select ==2
    movie_list = db.execute("SELECT * FROM movie_reviews WHERE recommended = 'true'")
  else list_select == 3
    movie_list = db.execute("SELECT * FROM movie_reviews ORDER BY rating DESC")
  end

  movie_list.each do |movie|
    puts "#{movie["name"]}: #{movie["rating"]} stars '#{movie["comments"]}'  Would recommend: #{movie["recommended"]}"
  end
end
