class Student < ActiveRecord::Base
	validates     :name, :email, :UIN, presence:{message: "Please input requested Information!"}
	#, allow_nil:false
	validates_uniqueness_of :UIN, :email, :case_sensitive => false
end
	