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
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end 
  
  def meals 
    Meal.all.select do |meal|
      meal.waiter == self 
    end 
  end 
end 