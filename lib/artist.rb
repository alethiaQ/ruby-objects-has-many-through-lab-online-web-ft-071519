class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.collect  {|song| song.genre}
  end
end
