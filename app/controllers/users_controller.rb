class UsersController < ApplicationController
  # before_action :set_user, only: [:new, :create]
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render html: 'Succes'
    else
      render 'new'
    end

  end

  def index
    @users=User.all
  end

  private

    def user_params
       params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
    end

    def set_new_user
      @user = User.new
    end
end
