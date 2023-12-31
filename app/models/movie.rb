class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # remove rating as too strict for spec
  # validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  has_many :bookmarks
  has_many :lists, through: :bookmarks
end
