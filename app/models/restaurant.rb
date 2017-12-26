class Restaurant < ActiveRecord::Base
  has_many :cooks
  has_many :recipes, through: :cooks
end
