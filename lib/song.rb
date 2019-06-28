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

  def self.genre_count
    count = {}
    @@genres.each do |genre|
      count.key?(genre) ? count[genre] += 1 : count[genre] = 1
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      count.key?(artist) ? count[artist] += 1 : count[artist] = 1
    end
    count
  end
end
