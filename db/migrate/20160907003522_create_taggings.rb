class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :recipe_id, null: false, index: true
      t.integer :veg_id, null: false, index: true
      t.string :tag_name, null: false, index: true
      t.timestamps null: false
    end
  end
end
