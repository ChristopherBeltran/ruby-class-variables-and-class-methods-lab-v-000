class Song 
  attr_accessor :name, :artist, :genre
  
@@count = 0 
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count +=1 
  @@genres << genre
  @@artists << artist
end 

def self.count
  return @@count 
end 

def self.genres 
  uniques = @@genres.uniq
  return uniques
end 

def self.artists
  
end 
end 