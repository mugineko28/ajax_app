class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  #不要なので削除
  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
  
end
