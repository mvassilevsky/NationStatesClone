module Api
  class NationsController < ApplicationController
    def show
      @nation = Nation.find(params[:id])
      if @nation
        render :show
      else
        render json: ["Nation not found"], status: 404
      end
    end

    private
    def nation_params
      params.require(:nation).permit(:name, :password, :currency, :animal,
                                     :population, :leader_title, :motto,
                                     :recent_issues, :flag_url)
    end
  end
end
