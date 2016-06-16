class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :pictures
end
