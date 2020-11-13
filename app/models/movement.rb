class Movement < ApplicationRecord
    has_many :protests 
    has_many :users, through: :protests
    accepts_nested_attributes_for :protests 
    
end 