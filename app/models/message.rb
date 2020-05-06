class Message < ApplicationRecord

  belongs_to :user,       optional: true
  belongs_to :point,      optional: true
 

  validates :message,          presence: true, unless: :image?, length: { maximum: 100 }  
  validates :user_id,          presence: true


  
  mount_uploader :image, ImageUploader

end
