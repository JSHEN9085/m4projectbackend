class Collection < ApplicationRecord
  belongs_to :collector, :class_name => "User"
  belongs_to :recipe 
end
