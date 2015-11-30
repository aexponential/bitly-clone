
class Url < ActiveRecord::Base
  
  validates :long_url, presence: true
  validates :long_url, uniqueness: true
  # validates :short_url, uniqueness:true
  before_create :shorten
  
  def shorten
		self.short_url=SecureRandom.hex(6)
  end

	def count
		self.click_count +=1
		self.save
	end

end