require_relative 'config/environment'
require 'pry'

b = system("imgcat lib/genre.png")

my_app = Cli.new

my_app.welcome
my_app.pick_favorites
binding.pry





