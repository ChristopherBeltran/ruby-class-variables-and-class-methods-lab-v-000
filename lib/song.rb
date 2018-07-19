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
  the_artists = @@artists.uniq 
  return the_artists
end 

def self.genre_count
  Hash[*@@genres.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
end


end 
