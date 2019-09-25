require 'pry-byebug'

class Artist
  attr_reader :name, :songs
  attr_accessor :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    genre.songs << new_song
    genre.artists << self
    @genres << genre
    new_song
  end
end
