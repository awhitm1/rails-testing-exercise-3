class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: @posts
  end

  def show
    post = Post.find(params[:id])
    render json: @post
  end

  def add
    post = Post.create(title: params[:title], content: params[:content], user_id: params[:user_id])
    render json: @post
  end

  def delete
    post = Post.find(params[:id])
    post.destroy
    render json: @post
  end
end
