class AddImagetoVegetable < ActiveRecord::Migration
  def change
    add_column :vegetables, :image, :string
  end
end
