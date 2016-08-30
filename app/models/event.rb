class Event < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  has_many :ratings
 
end
