class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new(message: params[:message], user: session[:name])

    if @post.save
      redirect_to("/posts/show")
    else
      render("/posts/new")
    end
  end

  def show
    @posts = Post.all.order(id: :desc)
  end

  def each
    @post = Post.find_by(id: params[:id])
    # :idに変なの入れられたときに何とかしたい
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/show")
  end

  def edit
    @post = Post.find_by(id: params[:id])
    @message = @post.message
  end

  def recreate
    @post = Post.find_by(id: params[:id])
    if @post
      @post.message = params[:message]
      @post.save
    end

    redirect_to("/posts/show")
  end
end
