# == Schema Information
#
# Table name: nation_stats
#
#  id          :integer          not null, primary key
#  nation_id   :integer          not null
#  ec_freedom  :integer          not null
#  soc_freedom :integer          not null
#  pol_freedom :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class NationStatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
