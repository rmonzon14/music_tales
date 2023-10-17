class Album < ApplicationRecord
  # associations
  belongs_to :artist
  has_many :songs

  # validations
  validates :name, presence: true
end
