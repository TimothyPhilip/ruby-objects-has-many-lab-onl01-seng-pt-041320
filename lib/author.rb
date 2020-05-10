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
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
      Post.all.count
  end
  
  
end