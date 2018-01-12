class Category < ActiveRecord::Base
  has_many :recipes
  has_many :categories_recipes

  def slug #should i add these as helper methods in my app_controller? self?
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find{|category| category.slug == slug}
  end

end
