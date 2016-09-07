class Tagging < ActiveRecord::Base
  belongs_to :recipe, dependent: :destroy
  belongs_to :vegetable, dependent: :destroy
end
