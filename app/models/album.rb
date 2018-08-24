class Album < ApplicationRecord
	has_many :images, :dependent => :delete_all
	validates :name, presence: true, uniqueness: true
	mount_uploader :album_coverimage, ImageUploader
end
