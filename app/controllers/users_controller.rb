class UsersController < ApplicationController
  before_action :authenticate_user, except: [:new, :create]

  def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
