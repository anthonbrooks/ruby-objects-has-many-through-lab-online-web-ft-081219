class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  def new_song 
    
  end 
  def songs 
    Song.all.select { |song| song.artist == self }
  end 
  
  
  
  def genres 
    
  end 
  
end 