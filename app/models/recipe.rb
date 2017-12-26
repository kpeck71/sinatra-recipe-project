class Recipe < ActiveRecord::Base
  has_many :cuisines
  belongs_to :cook
end
