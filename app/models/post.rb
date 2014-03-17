class Post < ActiveRecord::Base
	has_many :comments
	mount_uploader :image, ImageUploader
	validates :title, :name, :description, :presence => true
end
