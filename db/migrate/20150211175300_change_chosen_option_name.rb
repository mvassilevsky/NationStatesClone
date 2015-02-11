class ChangeChosenOptionName < ActiveRecord::Migration
  def change
    rename_column :nation_issues, :chosen_option, :chosen_option_id
  end
end
