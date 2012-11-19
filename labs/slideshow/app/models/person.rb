class Person < ActiveRecord::Base
  validates :name, :presence => true 
  mount_uploader :photo, ProfilePicUploader #this is what join carrierwave and profilepic together
end
