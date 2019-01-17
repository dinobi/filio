class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  after_action :clear_xhr_flash

  private

  def current_user
    @current_user ||= User.find_by_email(session[:email])
  end

  def logged_in?
    current_user != nil
  end

  def authorize
    unless current_user
      redirect_to index_path
      flash[:notice] = "Please login to perform this action"
    end
  end

  def clear_xhr_flash
    flash.discard if request.xhr?
  end
end
