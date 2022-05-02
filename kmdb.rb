# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# NOTE TO SELF: If starting new session of Gitpod, need to run in terminal - rails db:migrate - in order to generate the development.sqlite3 thingy. Otherwise code will not work.

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

new_studio = Studio.new
new_studio["name"] = "Warner Bros." # Studio 1
new_studio.save

new_movie = Movie.new
new_movie["title"] = "Batman Begins" # Movie 1
new_movie["year_released"] = 2005
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = new_studio["id"]
new_movie.save

new_movie2 = Movie.new
new_movie2["title"] = "The Dark Knight" # Movie 2
new_movie2["year_released"] = 2008
new_movie2["rated"] = "PG-13"
new_movie2["studio_id"] = new_studio["id"]
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"] = "The Dark Knight Rises" # Movie 3
new_movie3["year_released"] = 2012
new_movie3["rated"] = "PG-13"
new_movie3["studio_id"] = new_studio["id"]
new_movie3.save

new_actor = Actor.new
new_actor["name"] = "Christian Bale" # Actor 1
new_actor.save

new_actor2 = Actor.new
new_actor2["name"] = "Michael Caine" # Actor 2
new_actor2.save

new_actor3 = Actor.new
new_actor3["name"] = "Liam Neeson" # Actor 3
new_actor3.save

new_actor4 = Actor.new
new_actor4["name"] = "Katie Holmes" # Actor 4
new_actor4.save

new_actor5 = Actor.new
new_actor5["name"] = "Gary Oldman" # Actor 5
new_actor5.save

new_actor6 = Actor.new
new_actor6["name"] = "Heath Ledger" # Actor 6
new_actor6.save

new_actor7 = Actor.new
new_actor7["name"] = "Aaron Eckhart" # Actor 7
new_actor7.save

new_actor8 = Actor.new
new_actor8["name"] = "Maggie Gyllenhaal" # Actor 8
new_actor8.save

new_actor9 = Actor.new
new_actor9["name"] = "Tom Hardy" # Actor 9
new_actor9.save

new_actor10 = Actor.new
new_actor10["name"] = "Joseph Gordon-Levitt" # Actor 10
new_actor10.save

new_actor11 = Actor.new
new_actor11["name"] = "Anne Hathaway" # Actor 11
new_actor11.save

new_role = Role.new
new_role["movie_id"] = new_movie["id"] # Movie 1 i.e. Batman Begins
new_role["actor_id"] = new_actor["id"] # Actor 1 i.e. Christian Bale
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role2 = Role.new
new_role2["movie_id"] = new_movie["id"] # Movie 1 i.e. Batman Begins
new_role2["actor_id"] = new_actor2["id"] # Actor 2 i.e. Michael Caine
new_role2["character_name"] = "Alfred"
new_role2.save

new_role3 = Role.new
new_role3["movie_id"] = new_movie["id"] # Movie 1 i.e. Batman Begins
new_role3["actor_id"] = new_actor3["id"] # Actor 3 i.e. Liam Neeson
new_role3["character_name"] = "Ra's Al Ghul"
new_role3.save

new_role4 = Role.new
new_role4["movie_id"] = new_movie["id"] # Movie 1 i.e. Batman Begins
new_role4["actor_id"] = new_actor4["id"] # Actor 4 i.e. Katie Holmes
new_role4["character_name"] = "Rachel Dawes"
new_role4.save

new_role5 = Role.new
new_role5["movie_id"] = new_movie["id"] # Movie 1 i.e. Batman Begins
new_role5["actor_id"] = new_actor5["id"] # Actor 5 i.e. Gary Oldman
new_role5["character_name"] = "Commissioner Gordon"
new_role5.save

new_role6 = Role.new
new_role6["movie_id"] = new_movie2["id"] # Movie 2 i.e. The Dark Knight
new_role6["actor_id"] = new_actor["id"] # Actor 1 i.e. Christian Bale
new_role6["character_name"] = "Bruce Wayne"
new_role6.save

new_role7 = Role.new
new_role7["movie_id"] = new_movie2["id"] # Movie 2 i.e. The Dark Knight
new_role7["actor_id"] = new_actor6["id"] # Actor 6 i.e. Heath Ledger
new_role7["character_name"] = "Joker"
new_role7.save

new_role8 = Role.new
new_role8["movie_id"] = new_movie2["id"] # Movie 2 i.e. The Dark Knight
new_role8["actor_id"] = new_actor7["id"] # Actor 7 i.e. Aaron Eckhart
new_role8["character_name"] = "Harvey Dent"
new_role8.save

new_role9 = Role.new
new_role9["movie_id"] = new_movie2["id"] # Movie 2 i.e. The Dark Knight
new_role9["actor_id"] = new_actor2["id"] # Actor 2 i.e. Michael Caine
new_role9["character_name"] = "Alfred"
new_role9.save

new_role10 = Role.new
new_role10["movie_id"] = new_movie2["id"] # Movie 2 i.e. The Dark Knight
new_role10["actor_id"] = new_actor8["id"] # Actor 8 i.e. Maggie Gyllenhaal
new_role10["character_name"] = "Rachel Dawes"
new_role10.save

new_role11 = Role.new
new_role11["movie_id"] = new_movie3["id"] # Movie 3 i.e. The Dark Knight Rises
new_role11["actor_id"] = new_actor["id"] # Actor 1 i.e. Christian Bale
new_role11["character_name"] = "Bruce Wayne"
new_role11.save

new_role12 = Role.new
new_role12["movie_id"] = new_movie3["id"] # Movie 3 i.e. The Dark Knight Rises
new_role12["actor_id"] = new_actor5["id"] # Actor 5 i.e. Gary Oldman
new_role12["character_name"] = "Commissioner Gordon"
new_role12.save

new_role13 = Role.new
new_role13["movie_id"] = new_movie3["id"] # Movie 3 i.e. The Dark Knight Rises
new_role13["actor_id"] = new_actor9["id"] # Actor 9 i.e. Tom Hardy
new_role13["character_name"] = "Bane"
new_role13.save

new_role14 = Role.new
new_role14["movie_id"] = new_movie3["id"] # Movie 3 i.e. The Dark Knight Rises
new_role14["actor_id"] = new_actor10["id"] # Actor 10 i.e. Joseph Gordon-Levitt
new_role14["character_name"] = "John Blake"
new_role14.save

new_role15 = Role.new
new_role15["movie_id"] = new_movie3["id"] # Movie 3 i.e. The Dark Knight Rises
new_role15["actor_id"] = new_actor11["id"] # Actor 11 i.e. Anne Hathaway
new_role15["character_name"] = "Selina Kyle"
new_role15.save

# Below code was a check I put in to see if my databases were being created correctly
# all_studios = Studio.all
# puts all_studios.inspect

# all_movies = Movie.all
# puts all_movies.inspect

# all_actors = Actor.all
# puts all_actors.inspect

# all_roles = Role.all
# puts all_roles.inspect

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies = Movie.all
for movie in movies
    movie_title = movie["title"]
    movie_year_released = movie["year_released"]
    movie_rated = movie["rated"]
    studio = Studio.find_by({"id" => movie["studio_id"]})
    movie_studio = studio["name"]
    puts "#{movie_title} -- #{movie_year_released} -- #{movie_rated} -- #{movie_studio}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

# roles = Role.all
for role in Role.all
    movie = Movie.find_by({"id" => role["movie_id"]})
    role_movie_title = movie["title"]
    actor = Actor.find_by({"id" => role["actor_id"]})
    role_actor_name = actor["name"]
    role_character_name = role["character_name"]
    puts "#{role_movie_title} -- #{role_actor_name} -- #{role_character_name}"
end

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle