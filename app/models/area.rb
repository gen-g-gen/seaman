class Area < ApplicationRecord
  
  has_many :points
  has_many :homepoints
  belongs_to :prefecture

end
