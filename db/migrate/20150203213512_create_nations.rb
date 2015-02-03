class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.integer :ec_freedom, null: false
      t.integer :soc_freedom, null: false
      t.integer :pol_freedom, null: false
      t.string :currency, null: false
      t.string :animal, null: false
      t.integer :population, null: false
      t.string :leader_title, null: false
      t.string :motto
      t.string :recent_issues
      t.string :flag_url

      t.timestamps
    end
  end
end
