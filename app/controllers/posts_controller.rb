class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
      flash[:notice] = 'Пост створено.'
    else
      render :new,
      alert: 'Пост нестворено.'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :foto, :category_id).merge(user_id: current_user.id)
  end

end
