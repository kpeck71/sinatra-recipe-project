class Category < ActiveRecord::Base
  belongs_to :recipe

  def slug #should i add these as Helper methods in app controller?
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find{|category| category.slug == slug}
  end

end
