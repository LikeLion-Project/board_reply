class HomeController < ApplicationController
  def index
    
    @post_list = Post.all.order("id desc")
    
  end
  
  # 게시글 작성 화면
  def write_post    
  end
  
  # 게시글 작성 요청 Post
  def write      
    post = Post.new(title: params[:title],
                    content: params[:content])
    post.save
    
    redirect_to "/home/index"
  end
  
  # 게시글 상세 보기 화면
  def detail_post
    @post = Post.find(params[:id])
  end  
end
