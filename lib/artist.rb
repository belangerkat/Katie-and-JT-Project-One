class Artist < ActiveRecord::Base 
    has_many: genres
    has_many: songs, through: :genres
end
