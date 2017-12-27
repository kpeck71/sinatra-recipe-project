class Cook < ActiveRecord::Base
  has_many :recipes
  has_secure_password
  validates_presence_of :username, :password

  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find{|cook| cook.slug == slug}
  end

end
