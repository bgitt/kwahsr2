class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role

  before_save :assign_role

  has_many :teachings
  has_many :courses, :through => :teachings

  has_many :borrows
  has_many :books, :through => :borrows

	def assign_role
	  self.role = Role.find_by name: "Student" if self.role.nil?
	end

	def admin?
  	self.role.name == "Admin"
	end

	def instructor?
  	self.role.name == "Instructor"
	end

	def student?
  	self.role.name == "Student"
	end
end
