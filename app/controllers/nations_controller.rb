class NationsController < ApplicationController

  def new
    @nation = Nation.new
  end

  def create
    @nation = Nation.new(nation_params)
    if @nation.save
      sign_in!(@nation)
      redirect_to root_url
    else
      flash.now[:errors] = @nation.errors.full_messages
      render :new
    end
  end

  private
  def user_params
    params.require(:nation).permit(:name, :password, :ec_freedom, :soc_freedom,
                                   :pol_freedom, :currency, :animal,
                                   :population, :leader_title, :motto,
                                   :recent_issues, :flag_url, :tax_rate)
  end
end
