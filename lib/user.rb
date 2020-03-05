class User < ActiveRecord::Base
    has_many :favorites
    has_many :genres, through: :favorites
    validates :user_name, uniqueness: {case_sensitive: false}
end