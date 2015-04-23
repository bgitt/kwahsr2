class Course < ActiveRecord::Base
  has_many :teachings
  has_many :users, :through => :teachings

	def self.search(search)
		where("name like ?", "%#{search}%") 
	end
end
