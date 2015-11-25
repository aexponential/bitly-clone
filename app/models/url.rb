
class Url < ActiveRecord::Base
  
  before_create :shorten
  def shorten
  		self.short_url=SecureRandom.hex(6)
  end

  validates: url, uniqueness: true
end