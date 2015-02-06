class SessionsController < ApplicationController

  def new
  end

  def create
    nation = Nation.find_by_credentials(
      params[:nation][:name],
      params[:nation][:password]
    )

    if nation
      sign_in!(nation)
      redirect_to root_url
    else
      flash.now[:errors] = ["Nonexistent nation or incorrect password"]
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to new_session_url
  end

end
