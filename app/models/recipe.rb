# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  image        :string           not null
#  ingredients  :text             not null
#  instructions :text             not null
#  author_id    :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base

  validates :title, :image, :ingredients, :instructions, :author_id, presence: true
  
end
