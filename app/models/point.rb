class Point < ApplicationRecord

  belongs_to :area
  
  has_many :user_points
  has_many :users, through: :user_points


end
