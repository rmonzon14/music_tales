class YoutubeVideo < ApplicationRecord
    # associations
    belongs_to :channel
    has_many :songs

    # validations
    validates :title, :likes, :comments, :views, :url, :stream, presence: true # excluding description and stream because it can contain null data
    validates :title, uniqueness: true
    validates :is_official_video, :is_licensed, inclusion: { in: [true, false] } # only accept true or false value
    validates :likes, :comments, :views, numericality: { only_decimal: true }
    validates :stream, numericality: { only_integer: true }
end
