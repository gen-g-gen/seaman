class Message < ApplicationRecord

  belongs_to :user
  belongs_to :point, optional: true
 

  mount_uploader :image, ImageUploader
end
