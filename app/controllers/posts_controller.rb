class PostsController < ApplicationController
  before_action :authenticate_user, except: [:index, :new, :create]

  def index
    @posts = Post.all
    render template: "posts/index"
  end

  def new
    @post = Post.new
    render template: "posts/new"
  end

  def create
    @post = Post.new(
      user_id: current_user.id,
      image_url: params[:post][:image_url],
      content: params[:post][:content],
    )

    if @post.save
      redirect_to "/posts"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
    render template: "posts/edit"
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.image_url = params[:post][:image_url]
    @post.user_id = params[:post][:user_id]
    @post.content = params[:post][:content]
    if @post.save
      redirect_to "/posts"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to "/posts", status: :see_other
  end
end
