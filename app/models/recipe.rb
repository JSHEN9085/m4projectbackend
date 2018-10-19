class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipeingredients
  has_many :collections
  has_many :collectors, through: :collections, :source => :user
end
