class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates_inclusion_of :rating, :in => 1..5
end

