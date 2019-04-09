class Genre < Artist

  def new_song(name, artist)
    Song.new(self, name, artist)
  end

  def songs
    Song.all.select { |song| song.genre == self  }
  end

  def artists
    songs.map { |song| song.artist  }
  end

end
