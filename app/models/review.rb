class Review < ApplicationRecord
  belongs_to :movie

  validates :rating, :comment, presence: true
  validates :rating, numericality: {only_integers: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10}

end
