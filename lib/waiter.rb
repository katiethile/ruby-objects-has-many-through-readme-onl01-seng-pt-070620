class Waiter
  @@all = []
  attr_accessor :name, :yrs_of_experience
  
  def initialize(name, yrs_of_experience)
    @name = name 
    @yrs_of_experience = yrs_of_experience
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def 
end 