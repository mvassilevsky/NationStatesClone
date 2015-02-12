class RemoveRecentIssues < ActiveRecord::Migration
  def change
    remove_column :nations, :recent_issues
  end
end
