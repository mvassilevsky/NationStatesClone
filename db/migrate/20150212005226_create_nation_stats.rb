class CreateNationStats < ActiveRecord::Migration
  def change
    create_table :nation_stats do |t|
      t.integer :nation_id, null: false
      t.integer :ec_freedom, null: false
      t.integer :soc_freedom, null: false
      t.integer :pol_freedom, null: false

      t.timestamps
    end

    add_index :nation_stats, :nation_id
  end
end
