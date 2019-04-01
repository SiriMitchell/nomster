class Photo < ApplicationRecord
  belongs_to :user_id
  belongs_to :place


  mount_uploader :picture, PictureUploader
end
