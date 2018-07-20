class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres =[]

  def initialize(name, artist, genre)
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

  def self.genres
    if @@genres.uniq
     @@genres.uniq
    end
  end

  def self.artists
    if @@artists.uniq
      @@artists.uniq
    end
  end

  def self.artist_count
    count_helper(@@artists)
  end

  def self.genre_count
    count_helper(@@genres)
  end

  private
  
  def self.count_helper(array)
    helper_hash = {}
    array.each do |element|
      if helper_hash.include?(element)
        helper_hash[element] += 1
      else
        helper_hash[element] = 1
      end
    end
    return helper_hash
  end


end



=begin
Nothing but nets
=end
