class Restaurant < ActiveRecord::Base
  has_many :recipes, through: :cooks
end
