class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |single_song|
      single_song.artist == self
    end
  end

  def genres
    Song.all.map do |single_song|
      if single_song.artist == self
        single_song.genre
      end
    end
  end

end
