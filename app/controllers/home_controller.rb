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
    @comments = @post.comments.order('id desc')
    # @comments = Comment.where(post_id: params[:id]).order('id desc')
  end  
  
  # 댓글 작성 요청 Post
  def write_reply
    comment = Comment.new(post_id: params[:post_id],
                      content: params[:content])
    comment.save    
    render :json => {:reply => comment}
  end
end
