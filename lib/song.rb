class Song
  attr_accessor :name, :artist, :genre    # initialize with a name, artist, and genre,
                                          # of which none are changeable
  @@all = []     # knows about all song instances 
  
  def initialize(name, artist, genre)  # initialize with a name, artist, and genre
    @name = name         # initialize with name 
    @artist = artist      # instance of Song belongs to an artist 
    @genre = genre      # instance of Song belongs to a genre
    @@all << self       # knows about all song instances 
  end
  

  def self.all     # knows about all song instances 
    @@all
  end
  
end