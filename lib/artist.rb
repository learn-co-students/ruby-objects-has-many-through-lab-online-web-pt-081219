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
  def new_song(nam, genre)
    Song.new(name, self, genre)
  end
  
  
  def songs
    Song.all.select{|song|
      song.artist == self
    }
  end
  def genres
    genres = []
    songs.select{|song|
      genres << song.genre unless genres.include?(song.genre)
    }
    genres
  end
end