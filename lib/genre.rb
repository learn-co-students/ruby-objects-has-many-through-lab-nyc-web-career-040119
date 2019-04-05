class Genre

  attr_reader :name

  @@genres = []

  def initialize(name)
    @name = name
    @@genres << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def self.all
    @@genres
  end

  def artists
    self.songs.map do |song|
      song.artist
    end

  end

end