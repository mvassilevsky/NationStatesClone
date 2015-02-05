class NationsController < ApplicationController

  def new
    @nation = Nation.new
    @questions = IdeologyParser.questions
  end

  def create
    ideology_stats = IdeologyParser.new(ideology_params).parse
    p nation_params
    p ideology_stats
    nation_params.merge!(ideology_stats)
    p nation_params
    @nation = Nation.new(nation_params)
    @questions = IdeologyParser.questions
    if @nation.save
      sign_in!(@nation)
      redirect_to root_url
    else
      flash.now[:errors] = @nation.errors.full_messages
      render :new
    end
  end

  private
  def nation_params
    params.require(:nation).permit(:name, :password, :currency, :animal,
                                   :population, :leader_title, :motto,
                                   :recent_issues, :flag_url)
  end

  def ideology_params
    params.require(:ideology).permit(:q1, :q2)
  end
end
