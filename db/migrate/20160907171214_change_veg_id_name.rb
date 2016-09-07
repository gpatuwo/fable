class ChangeVegIdName < ActiveRecord::Migration
  def change
    rename_column :taggings, :veg_id, :vegetable_id
  end
end
