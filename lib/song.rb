# OBJECTIVES

# 1. Use class variables to keep track of data pertaining to a class.
      # --> @@variable instead of instance variable which is @variable

# 2. Define class methods to expose data pertaining to a 
      #example
            # class yo
            #   @@all = []
            #   @@count = 0

            #   def self.all
            #     @@all
            #   end

            #   def self.count  
            #     @@count
            #   end

            # end
require 'pry'
class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1

    @@artists << @artist
    @@genres << @genre

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
    @@genres.each {|genre| @@genre_count[genre] == nil ? @@genre_count[genre] = 1 : @@genre_count[genre] +=1 }
    @@genre_count
  end

  def self.artist_count
    @@artists.each {|artist| @@artist_count[artist] == nil ? @@artist_count[artist] = 1 : @@artist_count[artist] +=1 }
    @@artist_count
  end

end


# Pry.start