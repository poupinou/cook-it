class Recipe < ApplicationRecord
	mount_uploader :picture, ImageUploader
end
