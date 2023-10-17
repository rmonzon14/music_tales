class Channel < ApplicationRecord
    # associations
    has_many :youtube_videos

    # validations
    validates :name, presence: true
    validates :name, uniqueness: true
end
