class Post
  attr_accessor :author 
  
  @@all = []
  
  def initialize(title)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def title 
   @title
  end

  def arthor_name 
   if self.author
     self.author.name 
   else 
     nil 
   end 
  end
  
  
end 