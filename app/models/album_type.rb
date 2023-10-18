class AlbumType < ApplicationRecord
    # associations
    has_many :albums

    # validations
    validates :name, presence: true
    validates :name, uniqueness: true
end
