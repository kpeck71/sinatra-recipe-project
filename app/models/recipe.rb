class Recipe < ActiveRecord::Base
  has_many :category_recipes
  has_many :categories, through: :category_recipes
  belongs_to :user

  def slug
    name.downcase.delete(?').gsub(" ","-").gsub("’","")
  end

  def self.find_by_slug(slug)
    self.all.find{|recipe| recipe.slug == slug}
  end

end
