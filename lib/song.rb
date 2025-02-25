class Song
 
    @@count= 0
    @@artists = []
    @@genres = []
 
 
     attr_accessor :name, :artist, :genre 
    
     def initialize(name,artist,genre)
       @name = name
       @artist = artist
       @genre = genre
       @@count +=1
 
       @@artists << @artist 
       @@genres << @genre
     end
 
     def self.count 
         return @@count 
     end 
 
     def self.artists 
         return @@artists.uniq
     end
 
     def self.genres 
         return @@genres.uniq 
     end 
     
     def self.genre_count
         genre_count = {}
         @@genres.each do |genre|
           if genre_count[genre] #if the genre is already in the hash
             genre_count[genre] += 1
           else #if it's a new genre
             genre_count[genre] = 1
           end
         end
         genre_count
       end
     
       def self.artist_count
         artist_count = {}
         @@artists.each do |artist|
           if artist_count[artist] #if the artist is already in the hash
             artist_count[artist] += 1
           else
             artist_count[artist] = 1
           end
         end
         artist_count
       end
     end