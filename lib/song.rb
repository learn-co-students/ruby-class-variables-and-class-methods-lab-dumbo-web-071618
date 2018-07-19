class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre
        @@all << self
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
        result_hash = {}
        @@genres.each do |genre|
            result_hash[genre] = @@genres.count(genre)
        end
        result_hash
    end

    def self.artist_count
        result_hash = {}
        @@artists.uniq.each do |artist|
            result_hash[artist] = @@artists.count(artist)
        end
        result_hash
    end
end