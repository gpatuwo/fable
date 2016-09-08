# == Schema Information
#
# Table name: taggings
#
#  id           :integer          not null, primary key
#  recipe_id    :integer          not null
#  vegetable_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Tagging < ActiveRecord::Base
  belongs_to :recipe, dependent: :destroy
  belongs_to :vegetable, dependent: :destroy
end
