class HomeController < ApplicationController
  def index
    
    @post_list = Post.all.order("id desc")
    
  end
end
