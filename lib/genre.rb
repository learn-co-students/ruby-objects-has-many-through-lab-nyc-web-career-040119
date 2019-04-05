class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |single_song|
      single_song.genre == self
    end
  end

  def artists
    Song.all.map do |single_song|
      if single_song.genre == self
        single_song.artist
      end
    end
  end

end
