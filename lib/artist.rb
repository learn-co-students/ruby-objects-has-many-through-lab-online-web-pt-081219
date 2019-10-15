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
  #Kanye.new_song("yeezy", "rap")
  #rap song Yeezy by Kanye
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select{|songs|songs.artist == self}
  end
  
  def genres
    songs.collect{|songs|songs.genre}
  end
  
end