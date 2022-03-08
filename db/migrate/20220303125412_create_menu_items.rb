class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.string :price
      t.string :type
      t.string :img_source
      t.boolean :available
      t.string :ingredients

      t.timestamps
    end
  end
end
