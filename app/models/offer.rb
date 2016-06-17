class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :rents
  has_many :pictures, dependent: :destroy
end
