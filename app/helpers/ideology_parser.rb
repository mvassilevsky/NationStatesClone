class IdeologyParser

  def self.questions
    questions = []
    questions[0] = "There should be a welfare state to take care of the worst-off."
    questions[1] = "Democracy is a good political system."
    questions[2] = "Compulsory national service is an unacceptable" +
                   " infringement on individual liberty."
    questions[3] = "People should be allowed to criticize the government," +
                   " even if the criticisms are offensive."
    questions[4] = "The free market is a good economic system."
    questions[5] = "The government should be involved in environmental protection."
    questions
  end

  def initialize (ideology_params)
    @ec_freedom = 0
    @soc_freedom = 0
    @pol_freedom = 0
    @tax_rate = 0
    @ecosystem = 0
    @q1_response = ideology_params["q1"].to_i
    @q2_response = ideology_params["q2"].to_i
    @q3_response = ideology_params["q3"].to_i
    @q4_response = ideology_params["q4"].to_i
    @q5_response = ideology_params["q5"].to_i
    @q6_response = ideology_params["q6"].to_i
  end

  def parse
    @ec_freedom -= 5*@q1_response
    @tax_rate += 10*@q1_response

    @pol_freedom += 20*@q2_response

    @soc_freedom += 30*@q3_response
    @tax_rate -= @q3_response

    @soc_freedom += 5*@q4_response
    @pol_freedom += 10*@q4_response

    @ec_freedom += 20*@q5_response
    @tax_rate -= 2*@q5_response

    @tax_rate += 2*@q6_response
    @ec_freedom -= 5*@q6_response
    @ecosystem += 25*@q6_response

    { ec_freedom: @ec_freedom,
      soc_freedom: @soc_freedom,
      pol_freedom: @pol_freedom,
      tax_rate: @tax_rate,
      ecosystem: @ecosystem }
  end
end
