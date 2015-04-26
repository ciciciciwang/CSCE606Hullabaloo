class Student < ActiveRecord::Base
	validates :name, presence: true
	validates :UIN, presence: true
	validates :email, presence: true
	validates_uniqueness_of :email,:UIN
	validates :degree, presence: true
	validates :position_type, presence: true
end
