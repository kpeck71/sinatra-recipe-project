class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :categories
  belongs_to :user

  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find{|recipe| recipe.slug == slug}
  end

end
