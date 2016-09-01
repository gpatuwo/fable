class Vegetable < ActiveRecord::Base
  validates :name, :description, presence: true

  validates :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec, inclusion: {in:[true, false]}
end
