class CreateIssueOptions < ActiveRecord::Migration
  def change
    create_table :issue_options do |t|
      t.integer :issue_id, null: false
      t.string :body, null: false
      t.integer :ec_freedom, null: false
      t.integer :soc_freedom, null: false
      t.integer :pol_freedom, null: false
      t.integer :tax_rate, null: false
      t.integer :ecosystem, null: false
      t.string :result_txt, null: false

      t.timestamps
    end

    add_index :issue_options, :issue_id
  end
end
