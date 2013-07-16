class Book < ActiveRecord::Base
  attr_accessible :id, :title, :author, :year, :ISBN, :avatar
  mount_uploader :avatar, AvatarUploader
end
