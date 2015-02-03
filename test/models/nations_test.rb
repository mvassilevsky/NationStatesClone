# == Schema Information
#
# Table name: nations
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  session_token   :string(255)      not null
#  ec_freedom      :integer          not null
#  soc_freedom     :integer          not null
#  pol_freedom     :integer          not null
#  currency        :string(255)      not null
#  animal          :string(255)      not null
#  population      :integer          not null
#  leader_title    :string(255)      not null
#  motto           :string(255)
#  recent_issues   :string(255)
#  flag_url        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class NationsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
