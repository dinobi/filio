class SessionsController < ApplicationController
  before_action :authorize, except: %i[new create destroy]

  def create
    @user = User.find_by({ email: session_params[:email] })

    if @user&.authenticate(session_params[:password])
      session["email"] = @user.email
      redirect_to index_path
      flash[:notice] = "You login was successful"
    else
      redirect_to new_session_path
      flash[:warning] = "Email or password is incorrect"
    end
  end

  def destroy
    session["email"] = nil
    redirect_to index_path
    flash[:success] = "You signed out successfully"
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
