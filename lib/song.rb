class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
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
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end

end

ninety_one_problems = Song.new("91 Problems", "Jay-Z", "rap")
ninety_two_problems = Song.new("92 Problems", "Metallica", "metal")
ninety_three_problems = Song.new("93 Problems", "Jay-Z", "rap")

puts Song.count
pp Song.genres
pp Song.artists
pp Song.genre_count
pp Song.artist_count