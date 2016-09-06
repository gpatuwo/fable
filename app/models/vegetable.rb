# == Schema Information
#
# Table name: vegetables
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  jan         :boolean          not null
#  feb         :boolean          not null
#  mar         :boolean          not null
#  apr         :boolean          not null
#  may         :boolean          not null
#  jun         :boolean          not null
#  jul         :boolean          not null
#  aug         :boolean          not null
#  sep         :boolean          not null
#  oct         :boolean          not null
#  nov         :boolean          not null
#  dec         :boolean          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#

class Vegetable < ActiveRecord::Base
  validates :name, :description, presence: true

  validates :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec, inclusion: {in:[true, false]}
end
