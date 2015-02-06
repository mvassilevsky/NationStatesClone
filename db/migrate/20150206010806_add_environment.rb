class AddEnvironment < ActiveRecord::Migration
  def change
    add_column :nations, :environment, :integer, null: false
  end
end
