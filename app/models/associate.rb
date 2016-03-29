class Associate < ActiveRecord::Base
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
end
