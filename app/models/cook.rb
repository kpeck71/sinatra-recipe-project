class Cook < ActiveRecord::Base
  has_many :recipes
  belongs_to :restaurant
end
