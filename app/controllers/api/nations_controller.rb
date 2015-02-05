module Api
  def NationsController < ApplicationController
    def show
      
    end

    private
    def nation_params
      params.require(:nation).permit(:name, :password, :currency, :animal,
                                     :population, :leader_title, :motto,
                                     :recent_issues, :flag_url)
    end
  end
end
