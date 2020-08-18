require 'pry' 


class Genre
  attr_accessor :name    # has a name
  
  @@all = []
  
  def initialize(name)  # has (initializes with) a name 
    @name = name        # has a name 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def songs            # has many songs 
   # binding.pry 
    Song.all.select{|song| song.genre == self} 
    # Song class -> all instances of Song class
    # -> selects from all of the instances of the Song class based off of genre using a variable called 'song' 
    # -> sets the selected variable for song to the genre that this instance of Song belongs to 
    # -> asks if that is equal to itself, which it is, so it returns true and prints all the songs in the genre of the current instance of Genre
   # binding.pry 
  end

  
  def artists    # has many artists through songs 
   songs.collect{|song| song.artist}.uniq
   # calls the songs method -> use collect to apply this artist depending on the song
  end
  
end
