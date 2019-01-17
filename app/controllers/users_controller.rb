class UsersController < ApplicationController
  before_action :authorize, except: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to index_path
      session["email"] = @user.email
      flash[:success] = "Your account was successfully created"
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
