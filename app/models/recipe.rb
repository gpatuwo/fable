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
  has_many :taggings, dependent: :destroy
  has_many :vegetables, through: :taggings, source: :vegetable

  belongs_to :author, foreign_key: :author_id, primary_key: :id, class_name: :User

  has_many :comments

  validates :title, :image, :ingredients, :instructions, :author_id, presence: true

end
