class IdeologyParser

  def self.questions
    questions = []
    questions[0] = "There should be a welfare state to take care of the worst-off."
    questions[1] = "Democracy is a good political system."
    questions
  end

  def initialize (ideology_params)
    @ec_freedom = 0
    @soc_freedom = 0
    @pol_freedom = 0
    @tax_rate = 0
    @q1_response = ideology_params["q1"].to_i
    @q2_response = ideology_params["q2"].to_i
  end

  def parse
    @ec_freedom += 20*@q1_response
    @tax_rate += 5*@q1_response

    @pol_freedom += 20*@q2_response

    { ec_freedom: @ec_freedom,
      soc_freedom: @soc_freedom,
      pol_freedom: @pol_freedom,
      tax_rate: @tax_rate }
  end
end
