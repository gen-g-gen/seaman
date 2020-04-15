class Area < ApplicationRecord
  
  has_many :points
  belongs_to :prefecture

end
