class Author  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post_by_name(name)
    post = Post.new(name)
    add_post(song)
  end
  
  def self.post_count
      Post.all.count
  end
  
  
end