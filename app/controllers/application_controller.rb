class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_nation, :signed_in?

  private
  def current_nation
    @current_nation || Nation.find_by_session_token(sesssion[:session_token])
  end

  def signed_in?
    !!current_nation
  end

  def sign_in!(nation)
    @current_nation = nation
    session[:token] = nation.reset_token!
  end

  def sign_out
    current_nation.try(:reset_token!)
    session[:session_token] = nil
  end

  def require_signed_in!
    redirect_to new_session_url unless signed_in?
  end

end
