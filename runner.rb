require_relative 'config/environment'
require 'pry'

my_app = Cli.new

my_app.welcome
my_app.genre_choice
my_app.artist_choice_prompt
