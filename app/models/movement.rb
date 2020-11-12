class Movement < ApplicationRecord

    has_many :protests 
    has_many :users, through: :protests
    
end 