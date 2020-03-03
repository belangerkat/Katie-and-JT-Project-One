class Song < ActiveRecord::Base
   has_many: genres
   has_many: artists, through: :genres
end
