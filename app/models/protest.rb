class Protest < ApplicationRecord

   belongs_to :user 
   belongs_to :movement

   validates :name, presence: true, uniqueness: true 
   validates :location, presence: true
   validates :date, presence: true, length: { maximum: 250 }
   validates :certify, :acceptance => true

end 