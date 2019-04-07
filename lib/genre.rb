class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # INSTANCE METHODS
  def songs
    Song.all.select do |song|
      song.genre.name == self.name
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end
end
