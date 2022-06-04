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
    nation_create(nation_parameters)
  end

  def guest_create
    guestland = Nation.find_by_name('Guestland')
    guestland.destroy if guestland
    nation_parameters = {
      name: "Guestland",
      password_digest: "-",
      session_token: "-",
      ec_freedom: 50,
      soc_freedom: 50,
      pol_freedom: 50,
      tax_rate: 35,
      ecosystem: 50,
      currency: "Guest Dollar",
      animal: "friendly dog",
      population: 1000000,
      leader_title: "Glorious Guest",
      motto: "All is temporary; I will be destroyed upon logout."
    }
    nation_create(nation_parameters)
  end

  private
  def nation_params
    params.permit(:nation).permit(:name, :password, :currency, :animal,
                                   :population, :leader_title, :motto,
                                   :recent_issues, :flag_url)
  end

  def ideology_params
    params.permit(:ideology).permit(:q1, :q2, :q3, :q4, :q5, :q6)
  end

  def get_issues
    issue_ids = Issue.pluck(:id).sample(2)
    issue_ids.each do |issue_id|
      nation_issue = NationIssue.new
      nation_issue.nation_id = @nation.id
      nation_issue.issue_id = issue_id
      nation_issue.save
    end
  end

  def nation_create(nation_parameters)
    @nation = Nation.new(nation_parameters)
    @questions = IdeologyParser.questions
    if @nation.save
      sign_in!(@nation)
      NationStat.create({
        nation_id: current_nation.id,
        ec_freedom: current_nation.ec_freedom,
        soc_freedom: current_nation.soc_freedom,
        pol_freedom: current_nation.pol_freedom
        })
      get_issues
      redirect_to root_url
    else
      flash.now[:errors] = @nation.errors.full_messages
      render :new
    end
  end
end
