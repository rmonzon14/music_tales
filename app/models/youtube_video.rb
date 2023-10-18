class YoutubeVideo < ApplicationRecord
    # associations
    belongs_to :channel
    belongs_to :song

    # validations
    validates :title, :likes, :comments, :views, :url, :is_licensed, :stream, :is_official_video, presence: true # excluding description and stream because it can contain null data
    validates :title, uniqueness: true
    validates :is_official_video, :is_licensed, inclusion: { in: [true, false] } # only accept true or false value
    validates :likes, :comments, :views, numericality: { only_decimal: true }
    validates :stream, numericality: { only_integer: true }
end
