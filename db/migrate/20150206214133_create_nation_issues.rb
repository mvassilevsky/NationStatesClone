class CreateNationIssues < ActiveRecord::Migration
  def change
    create_table :nation_issues do |t|
      t.integer :nation_id, null: false
      t.integer :issue_id, null: false
      t.timestamps
    end

    add_index :nation_issues, :nation_id
    add_index :nation_issues, :issue_id
  end
end
