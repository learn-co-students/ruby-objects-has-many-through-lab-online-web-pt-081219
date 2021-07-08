require 'pry'

class Artist 
  @@all = [] 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end
  
  def new_song(name,genre)
    new_song = Song.new(name,self,genre)
    #@songs << new_song
    #binding.pry
  end 
  
  def songs 
    Song.all.select do |song| 
      song.artist == self
    end 
  end
  
  def genres 
      self.songs.map do |song| 
      song.genre
    end 
  end 
  
  def self.all 
    @@all
  end 
  
  
  
  
end