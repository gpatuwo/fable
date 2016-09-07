class RemoveTagNameFromTaggings < ActiveRecord::Migration
  def change
    remove_column :taggings, :tag_name
  end
end
