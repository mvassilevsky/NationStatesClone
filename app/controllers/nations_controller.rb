class NationsController < ApplicationController

  def new
    @nation = Nation.new
    @questions = IdeologyParser.questions
  end

  def create
    population = 1000000
    beginning_parameters = {population: population}
    nation_parameters = nation_params
    ideology_stats = IdeologyParser.new(ideology_params).parse
    nation_parameters.merge!(ideology_stats)
    nation_parameters.merge!(beginning_parameters)
    p beginning_parameters
    @nation = Nation.new(nation_parameters)
    p @nation
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
    params.require(:ideology).permit(:q1, :q2, :q3, :q4, :q5, :q6)
  end
end
