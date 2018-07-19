class Song 
	
	attr_accessor :name, :artist, :genre 
	attr_reader :count

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize name,artist,genre
		@name = name
		@artist = artist 
		@genre = genre 

		@@count += 1
		@@artists << artist
		@@genres << genre 
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
		genre_hash = {}
		
		@@genres.each do |genre|
			if genre_hash[genre] == nil
				genre_hash[genre] = @@genres.count(genre)
			end
		end
		genre_hash
	end

	def self.artist_count 
		artist_hash = {}

		@@artists.each do |artist|
			if artist_hash[artist] == nil
				artist_hash[artist] = @@artists.count(artist)
			end
		end
		artist_hash

	end

end