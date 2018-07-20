require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  #keeps track of number of new songs created
  @@count = 0

  @@genres = []

  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    Song.genres.each do |unique_genre|
      @@genres.each do |genre|
        if unique_genre == genre
          if genre_hash[unique_genre] == nil
            genre_hash[unique_genre] = 1
          else genre_hash[unique_genre] += 1
          end
        end
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    Song.artists.each do |unique_artist|
      @@artists.each do |artist|
        if unique_artist == artist
          if artist_hash[unique_artist] == nil
            artist_hash[unique_artist] = 1
          else artist_hash[unique_artist] += 1
          end
        end
      end
    end
    return artist_hash
  end

# show us all artists of existing songs
# show us all the genres of existing songs
# keep track of number of songs of each genre
##  Song.genre_count should return
##  {"rap" => 5, "rock" => 1, "country" => 3}
# reveal number of songs  each artist is responsible for (Song.rtist_count)


end
