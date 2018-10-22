class Recipe < ApplicationRecord
  belongs_to :user
  has_many :collections
  has_many :collectors, through: :collections, :source => :user
end
