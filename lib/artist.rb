class Artist 
  attr_accessor :name     # has a name 
  
  @@all = []      # knows about all artist instances
  
  def initialize(name)  
    @name = name
    @@all << self   # knows about all artist instances
  end 
  
  def new_song(name, genre)   # given a name and genre, creates a new song associated with that artist
    Song.new(name, self, genre)
  end
    
  def songs      # returns all songs associated with this artist 
   Song.all.select{|song| song.artist == self}
  end
  
  def genres      # has many genres, THROUGH SONGS 
    Song.all.collect{|song| song.genre}.uniq
  end
 
  def self.all    # knows about all artist instances 
    @@all
  end
  
end