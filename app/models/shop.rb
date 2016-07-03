class Shop < ActiveRecord::Base
    belongs_to :town
    belongs_to :user
end
