require_relative 'config/environment'
require 'pry'

my_app = Cli.new

my_app.welcome
my_app.pick_genre
binding.pry




