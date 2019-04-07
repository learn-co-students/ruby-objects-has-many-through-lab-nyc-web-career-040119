# CONNECTOR CLASS

class Song
  attr_reader :name, :artist, :genre

  @@all = []

  def initialize(name, artist_object, genre)
    @name = name
    @artist = artist_object
    @genre = genre

    @@all << self
  end

  # CLASS METHODS
  def self.all
    @@all
  end
end
