class AlbumType < ApplicationRecord
    # associations
    has_many :albums

    # validations
    validates :type, presence: true
end
