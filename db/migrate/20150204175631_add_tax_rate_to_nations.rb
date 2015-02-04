class AddTaxRateToNations < ActiveRecord::Migration
  def change
    add_column :nations, :tax_rate, :integer, null: false
  end
end
