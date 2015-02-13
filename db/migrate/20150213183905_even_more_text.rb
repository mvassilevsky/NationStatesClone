class EvenMoreText < ActiveRecord::Migration
  def change
    change_column :issues, :body, :text, limit: nil
  end
end
