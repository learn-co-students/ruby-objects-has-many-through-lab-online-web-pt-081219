class Artist
  
  attr_accessor :name, :genre 
  @@all = []
  
  def initialize(name)
    @name = name
    @genre = genre
    @songs = []
    @@all << self
  end
  
  def songs
    Song.all.each do |song|
      song
    end
  end
  
  def new_song(name,genre)
    song = Song.new(name,self,genre) 
  end
  
  def genres 
    Genre.all.each do |genres|
      genres.songs 
    end
  end
  
  def self.all
    @@all
  end
end