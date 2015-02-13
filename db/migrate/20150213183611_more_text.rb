class MoreText < ActiveRecord::Migration
  def change
    change_column :issue_options, :body, :text, limit: nil
    change_column :issue_options, :result_txt, :text, limit: nil
  end
end
