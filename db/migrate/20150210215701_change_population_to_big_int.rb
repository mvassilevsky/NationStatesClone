class ChangePopulationToBigInt < ActiveRecord::Migration
  def change
    change_column :nations, :population, :bigint
  end
end
