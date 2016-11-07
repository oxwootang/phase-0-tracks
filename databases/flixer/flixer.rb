# Welcome to Flixer! Your one-stop fixer for Netflix-management solutions.
# Design a ruby program that uses database to track TV shows on Netflix.

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("flix.db")

create_tv_series_table_cmd = <<-TBL
  CREATE TABLE IF NOT EXISTS tv_series(
    id INTEGERY PRIMARY KEY,
    title VARCHAR(255),
    rating INT,
    status VARCHAR(255),
    watchlist BOOLEAN
    )
TBL

create_watchlist_table_cmd = <<-TBL
  CREATE TABLE IF NOT EXISTS watchlist(
    id INTEGER PRIMARY KEY,
    ep_title VARCHAR(255),
    status VARCHAR(255),
    series_id INT,
    FOREIGN KEY (series_id) REFERENCES tv_series(id)
    )
TBL

# CREATE TABLEs in flix DATABASE
db.execute(create_watchlist_table_cmd)
db.execute(create_tv_series_table_cmd)

# insert new series into TV-series TABLE
def insert_series(db, title, rating, status="NEW", watchlist=false)
  db.execute("INSERT INTO tv_series (title, rating, status, watchlist) VALUES (?, ?, ?, ?)" [title, rating, status, watchlist])
end

# insert new series to watchlist TABLE
def insert_watchlist(db, ep_title, status="NEW", series_id)
  db.execute("INSERT INTO watchlist (ep_title, status, series_id) VALUES (?, ?, ?)" [ep_title, status, series_id])
  db.execute("UPDATE tv_series SET watchlist=true WHERE id=?" [series_id])
end


puts "Welcome to Flixer! Your one-stop shop to flix-management solutions."
puts "What would you like to do? insert/exit "
input_1 = gets.chomp
if input_1 == "insert"
  puts "Insert where? tv_series/watchlist "
  input_2 = gets.chomp
  if input_2 == "tv_series"
    puts "What is the series title?"
    title = gets.chomp
    puts "What is the rating?"
    rating = gets.chomp.to_i
    insert_series(db, title, rating)
  elsif input_2 == "watchlist"
    puts "What is the episode title?"
    title = gets.chomp
    puts "What is the series id?"
    id = gets.chomp.to_i
    insert_watchlist(db, title, "NEW", id)
  else
    puts "Cancelling insert."
  end
else
  puts "Nothing else to do here."
end


