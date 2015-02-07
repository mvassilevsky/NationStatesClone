class IdeologyParser

  def self.questions
   	[
    		"There should be a welfare state to take care of the worst-off.",
    		"Democracy is a good political system."
	]
  end

  def initialize (ideology_params)
    @ec_freedom = @soc_freedom = @pol_freedom = @tax_rate = 0
    @q1_response, @q2_response = ideology_params["q1"].to_i, ideology_params["q2"].to_i
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
