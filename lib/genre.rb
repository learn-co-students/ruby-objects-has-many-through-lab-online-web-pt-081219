class Genre 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all 
    @@all
  end
  def songs 
    Song.all.select{|song|
      song.genre == self
    }
  end
  def artists
    artist = []
    songs.select{|song|
      artist << song.artist unless artist.include?(song.artist)
    }
    artist
  end
end