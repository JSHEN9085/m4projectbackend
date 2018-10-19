class User < ApplicationRecord
  has_many :collections, :foreign_key => 'collector_id'
  has_many :collected_recipes, through: :collections, :source => :recipe
  has_many :recipes
end
