class Song < ApplicationRecord
  # associations
  belongs_to :album
  has_one :youtube_video

  # validations
  validates :track_name, :duration_ms, :tempo, :liveness, :valence, :instrumentalness, :accousticness, :speechiness, :loudness, :energy, :key, :danceability, :uri, presence: true
  validates :track_name, uniqueness: true
  validates :duration_ms, :tempo, :liveness, :valence, :instrumentalness, :accousticness, :speechiness, :loudness, :energy, :key, :danceability, numericality: { only_decimal: true }
end
