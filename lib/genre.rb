class Genre 
  
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end
  
  def songs
    Song.all.each { |song| song.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    songs.map(&:artist)
  end
  
  
  
end