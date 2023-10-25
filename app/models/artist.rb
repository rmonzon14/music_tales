class Artist < ApplicationRecord
    # associations
    has_many :albums

    # validations
    validates :name, :url_spotify, presence: true
    validates :name, uniqueness: true
end
