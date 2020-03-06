require_relative 'config/environment'
require 'pry'

my_app = Cli.new

my_app.welcome
my_app.user_genre_selection
my_app.user_artist_selection
