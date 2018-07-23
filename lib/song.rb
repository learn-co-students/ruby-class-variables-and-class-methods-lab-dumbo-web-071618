class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize name, artist, genre
    @name = name
    @artist= artist
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

  def self.genre_count # Takes in an array of genres
    # Create a variable to store Hash
    count = {}
    @@genres.each do |genre|
      count.key?(genre) ? count[genre] += 1 : count[genre] = 1
    end
    # Return accumulated Hash
    count
  end

  def self.artist_count
    # Create a variable to store Hash
    count = {}
    @@artists.each do |artist|
      count.key?(artist) ? count[artist] += 1 : count[artist] = 1
    end
    # Return accumulated Hash
    count
  end
end
