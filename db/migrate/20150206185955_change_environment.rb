class ChangeEnvironment < ActiveRecord::Migration
  def change
    rename_column :nations, :environment, :ecosystem
  end
end
