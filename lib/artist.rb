class Artist
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @@all << self
  
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
   
  end
  
  def songs
   Song.all.select{|song| song.artist == self}
  end
  
  def genres
    songs.map{|song| song.genre}
  end
  
  def self.all
    @@all
  end
end