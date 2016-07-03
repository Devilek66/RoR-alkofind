class Town < ActiveRecord::Base
  has_many :shop
  belongs_to :country
end
