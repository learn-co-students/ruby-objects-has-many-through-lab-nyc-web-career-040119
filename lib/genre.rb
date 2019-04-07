class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # INSTANCE METHODS
  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    Song.all.map do |songs|
      songs.artist
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end
end
