class Recipe < ActiveRecord::Base
  belongs_to :user
  validate :title, :presence => true
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
end
