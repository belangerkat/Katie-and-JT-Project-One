# Mod 1 Project: Discover New Music!
Discover New Music is a Command Line Interface(CLI) Application that a user interacts with. The user is able to select a genre from a collection of popular genres. After selecting a genre, the user is given a list of popular artists within that genre and an option to add the genre to their favorites. If the user selects an artist, they are given that artist's top two songs on Apple Music. If the user selects "Add Genre to Favorites," the genre is saved to the user's Favorites. Each command gives the user the option to return to the main menu or view their favorites, in addition to making their genre or artist selections.


# Code
Discover New Music's code uses the tty gem to enable the user's ability to select from a list of options. For example:

 def prompt
        TTY::Prompt.new
  end 

 user_artist_selection = prompt.select("Please add this genre to your favorites or choose an artist you like in this genre:", genre_artists(user_genre_selection) + add_favorite_option + view_favorites_option + main_menu_option)

 ##TTY prompt takes the elements of an array and lists them as options to choose from


# Motivation
Discover New Music's purpose is to make it easier for users find new songs in their favorite genres.


# Installation
1. To install gems wihthin th project run `bundle install`
2. To seed the data in the project run `rake db:migrate`


# Tests
To run tests within the project:
 1. Add `binding.pry` in between methods in cli.rb 
 2. OR put a pry in environment.rb to run <ModelName>.all and see your seeds
 3. Run the program with `ruby runner.rb`
 4. Run tests within pry in the terminal


 # Tech/ Framework
Discover New Music is built using SQLite3, ActiveRecord, and Ruby


# Credits

Discover New Music was constructed by:
  JT Lu
  Katie Belanger


