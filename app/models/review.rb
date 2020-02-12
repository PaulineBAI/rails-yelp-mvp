class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true },
                     inclusion: { in: (0..5).to_a }

  belongs_to :restaurant
end
