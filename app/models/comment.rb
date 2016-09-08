# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  recipe_id  :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base

  belongs_to :user, foreign_key: :user_id
  belongs_to :recipe, foreign_key: :recipe_id
  
  validates :body, :recipe_id, :user_id, presence: true
end
