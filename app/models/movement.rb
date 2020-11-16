class Movement < ApplicationRecord
    has_many :protests, :dependent => :destroy
    has_many :users, through: :protests
    accepts_nested_attributes_for :protests, reject_if: proc{|attributes| attributes[:name].blank? || attributes[:location].blank? || attributes[:date].blank?}

    validates :name, presence: true, uniqueness: true 
    validates :yr_started, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }

    def self.more_than_five_protests
       self.all.map {|s| s if s.protests.count > 4}.compact
    end 
    
end 
