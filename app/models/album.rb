class Album < ApplicationRecord
  # associations
  belongs_to :artist
  belongs_to :album_type
  has_many :songs

  # validations
  validates :name, presence: true
end
