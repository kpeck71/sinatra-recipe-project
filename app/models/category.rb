class Category < ActiveRecord::Base
  has_many :category_recipes
  has_many :recipes, through: :category_recipes

  def slug #should i add these as helper methods in my app_controller? self?
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find{|category| category.slug == slug}
  end

end
