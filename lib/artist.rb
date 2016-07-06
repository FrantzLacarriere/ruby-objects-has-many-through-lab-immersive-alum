class Artist
  attr_accessor
  attr_reader :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect(&:genre)
  end
end
