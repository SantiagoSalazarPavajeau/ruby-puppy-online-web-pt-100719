require 'pry'

class Dog
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all = []
  end
  
  def self.print_all
    @@all.each {|dog| puts dog}
  end
 # binding.pry
  
  def save
    @@all << self
  end
end
