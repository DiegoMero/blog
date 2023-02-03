class Api::PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.includes(:author).where(author_id: params[:user_id])

    render json: @posts
  end
end
