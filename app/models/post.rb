class Post < ActiveRecord::Base
	attr_accessible :photo, :title, :body
	mount_uploader :photo, PhotoUploader 
end
