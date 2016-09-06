class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.string :image, null: false
      t.text :ingredients, null: false
      t.text :instructions, null: false
      t.integer :author_id, null: false
      t.timestamps null: false
    end

    add_index :recipes, :author_id
  end
end
