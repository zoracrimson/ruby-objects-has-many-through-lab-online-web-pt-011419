class Genre

  attr_accessor :song, :name, :genre
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def self.all 
    @@all
  end 

  def artists
    Song.all.map do |song|
      song.artist
    end
  end
end