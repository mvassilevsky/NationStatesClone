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
      flash.keep
      redirect_to root_path
    end
  end

  def destroy
    if current_nation.name == "Guestland"
      current_nation.nation_issues.each do |nation_issue|
        nation_issue.destroy
      end
      current_nation.nation_stats.each do |nation_stat|
        nation_stat.destroy
      end
      current_nation.destroy
      session[:session_token] = nil
    else
      sign_out
    end
    redirect_to new_session_url
  end

end
