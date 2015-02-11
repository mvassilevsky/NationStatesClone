class AddSelectedIssueOptionToNationIssues < ActiveRecord::Migration
  def change
    add_column :nation_issues, :resolved, :boolean, default: false
    add_column :nation_issues, :chosen_option, :integer
  end
end
