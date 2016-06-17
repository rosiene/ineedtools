class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :offer
end
