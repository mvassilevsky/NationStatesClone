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

class NationIssue < ActiveRecord::Base
  validates :nation_id, :issue_id, presence: true

  belongs_to(
    :nation,
    class_name: "Nation",
    foreign_key: :nation_id
  )
  
  belongs_to(
    :issue,
    class_name: "Issue",
    foreign_key: :issue_id
  )

end
