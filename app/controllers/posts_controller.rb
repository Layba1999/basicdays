class PostsController < ApplicationController
  def index
  	@posts= Post.all
  end


  def new
  end


  def create
  	puts(params)
  	redirect_to action:'index'
  end


  def update

    @post.update(post_params)

    redirect_to action: 'index'
  end


  def destroy
  	@post=Post.find(params[:id])
  	Post.destroy

  	redirect_to action: 'index'
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end


  def post_params
    return params[:post]
  end
  
end
