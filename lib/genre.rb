class Genre
  @@all = []
  attr_accessor :name, :songs, :artists
  
  def initialize(name)
    @songs = []
    @artists =[]
    @@all << self
    @name = name
    
  end
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.all.each{|el| @songs << el if el.genre == self}
  end
  
  def artists
    Song.all.each{|el| @artists << el.artist if el.genre == self}
    @artists
  end
end