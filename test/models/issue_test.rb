# == Schema Information
#
# Table name: issues
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  body       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
