class Rent < ActiveRecord::Base
  belongs_to :user
  belongs_to :offer
  has_one :review
end
