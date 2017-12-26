class Cook < ActiveRecord::Base
  has_many :recipes
  has_secure_password
  validates_presence_of :username, :email, :password

  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find{|cook| cook.slug == slug}
  end

end
