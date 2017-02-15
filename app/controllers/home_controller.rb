class HomeController < ApplicationController

  def index
    @posts = Post.page(params[:page]).per(6)
  end

end
