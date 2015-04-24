class Student < ActiveRecord::Base
	validates     :name, :email, :UIN, :presence=>true, :allow_blank=>false
	validates_uniqueness_of :UIN, :email, :case_sensitive => false
	validates :Mock_1, :Mock_2, :Resume_1, :Resume_2, :Resume_3, :Lunch, :presence=>true, allow_nil: true, allow_blank: true
end
