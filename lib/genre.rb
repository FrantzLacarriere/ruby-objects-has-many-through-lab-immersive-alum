class Genre
  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    self.songs.collect(&:artist)
  end
end
