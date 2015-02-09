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

class Issue < ActiveRecord::Base
  validates :title, :body, presence: true

  has_many(
    :nation_issues,
    class_name: "NationIssue",
    foreign_key: :issue_id
  )

  has_many(
    :issue_options,
    class_name: "IssueOption",
    foreign_key: :issue_id
  )

end
