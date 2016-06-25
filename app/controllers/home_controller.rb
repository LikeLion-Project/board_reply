class HomeController < ApplicationController
  def index
    
    @post_list = Post.all.order("id desc")
    
  end
  
  def write_post    
  end
  def write      
    post = Post.new(title: params[:title],
                    content: params[:content])
    post.save
    
    redirect_to "/home/index"
  end
end
