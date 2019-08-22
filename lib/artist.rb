class Artist 
  @@all = []
  attr_accessor :name, :songs, :genres
  
  def initialize(name)
    @songs = []
    @genres = []
    @@all << self
    @name = name
  end
  
  def self.all
    @@all
  end 
  
  def songs
    Song.all.each{|el| @songs << el if el.artist == self}
  end
  
  def new_song(name, genre)
    song =Song.new(name,self,genre)
   
  end
  
  def genres 
    Song.all.each{|el| @genres << el.genre if el.artist == self}
    @genres
  end
end