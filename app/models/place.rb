class Place < ApplicationRecord
  belongs_to :user 
  validates :name, length: { minimum: 3, 
  	too_short: "%{count} characters is the minimum amount allowed"}
  validates :address, :description,  presence: true

  self.per_page = 3
end
