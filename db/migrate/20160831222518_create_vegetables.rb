class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :jan, null: false
      t.boolean :feb, null: false
      t.boolean :mar, null: false
      t.boolean :apr, null: false
      t.boolean :may, null: false
      t.boolean :jun, null: false
      t.boolean :jul, null: false
      t.boolean :aug, null: false
      t.boolean :sep, null: false
      t.boolean :oct, null: false
      t.boolean :nov, null: false
      t.boolean :dec, null: false
      t.timestamps null: false
    end

    add_index :vegetables, :jan
    add_index :vegetables, :feb
    add_index :vegetables, :mar
    add_index :vegetables, :apr
    add_index :vegetables, :may
    add_index :vegetables, :jun
    add_index :vegetables, :jul
    add_index :vegetables, :aug
    add_index :vegetables, :sep
    add_index :vegetables, :oct
    add_index :vegetables, :nov
    add_index :vegetables, :dec
  end
end
