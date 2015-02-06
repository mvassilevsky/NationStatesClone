# == Schema Information
#
# Table name: nation_issues
#
#  id         :integer          not null, primary key
#  nation_id  :integer          not null
#  issue_id   :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class NationIssueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
