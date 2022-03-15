class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :menu_items, :type, :food_type
  end
end
