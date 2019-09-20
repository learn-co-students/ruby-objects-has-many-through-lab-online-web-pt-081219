class Genre 
attr_accessor :name 
@@all = Array.new 

def self.all
@@all 
end 

def initialize(name)
@name = name 
Genre.all << self 
end

def songs 
Song.all.select {|song| song.genre == self}
end 

def artists
songs.map {|song| song.artist}  
end 

end 