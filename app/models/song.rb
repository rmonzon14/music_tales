class Song < ApplicationRecord
  # associations
  belongs_to :album
  belongs_to :youtube_video

  # validations
  validates :track_name, presence: true
  validates :track_name, uniqueness: true
  validates :duration_ms, :tempo, :liveness, :valence, :instrumentalness, :accousticness, :speechiness, :loudness, :energy, :key, :danceability, numericality: { only_decimal: true }
end
