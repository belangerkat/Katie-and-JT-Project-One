class User < ActiveRecord::Base
    has_many: favorites
    has_many: genres, through: :favorites
end