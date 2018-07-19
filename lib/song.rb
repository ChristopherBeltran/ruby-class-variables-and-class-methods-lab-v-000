class Song 
  attr_accessor :name, :artist, :genre, :count, :artists, :genres
  
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

def count
  return @@count 
end 

def genres 
  uniques = @@genres.uniq
  return uniques
end 

def artists
  
end 
end 