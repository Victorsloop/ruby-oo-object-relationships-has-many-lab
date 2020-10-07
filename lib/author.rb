class Author

    attr_accessor :name ,:posts

    def initialize(name)
        @name = name 
    end 

    def posts 
      Post.all
    end 

    def add_post(posts)
        posts.author = self 
    end 

    def add_post_by_title(ptitle)
        posts = Post.new(ptitle)
        posts.author = self 
    end 

    def self.post_count 
        Post.all.count 
    end 




end 