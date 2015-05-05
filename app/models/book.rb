class Book < ActiveRecord::Base

  has_many :borrows
  has_many :users, :through => :borrows

	def self.search(search)
		where("title like ?", "%#{search}%") 
	end
end
