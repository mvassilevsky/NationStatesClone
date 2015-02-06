class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.string :body, null: false      

      t.timestamps
    end
  end
end
