class Vegetable < ActiveRecord::Base
  validates :name, :description, :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec, presence: true
end
