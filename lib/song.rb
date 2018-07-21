class Song

    @@count = 0 
    @@artists = []
    @@genres = []
 attr_accessor :name, :artist, :genre
  
 
 
 def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
   
    
 end 



   def self.count
     @@count
   end 


   def self.artists
    @@artists.uniq

   end 

   def self.genres
     @@genres.uniq
     
   end 
   
  def self.genre_count
   the_hash_of_genres = Hash.new(0) 
   num  = 0
   
    @@genres.each do |ele|
       the_hash_of_genres[ele] +=1
    

    end


     return the_hash_of_genres


  end 

 def self.artist_count
   hash_of_songs = Hash.new(0)

   @@artists.each do |ele|
    hash_of_songs[ele] +=1
   end 
   return hash_of_songs

 end 
 
end