class Movement < ApplicationRecord
    has_many :protests 
    has_many :users, through: :protests
    accepts_nested_attributes_for :protests, reject_if: proc{|attributes| attributes[:name].blank? || attributes[:location].blank? || attributes[:date].blank?}

    validates :name, presence: true, uniqueness: true 
    validates :yr_started, presence: true
    validates :description, presence: true, length: { maximum: 250 }

    def self.more_than_five_protests
        #binding.pry
       self.all.map {|s| s if s.protests.count > 1}.compact
    end 
    
end 
