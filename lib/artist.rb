require "pry"

class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # INSTANCE METHODS
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end
end
