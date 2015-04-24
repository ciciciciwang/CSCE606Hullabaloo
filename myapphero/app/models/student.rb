# class Student < ActiveRecord::Base
# 	validates     :name, :email, :UIN, presence:{message: "Please input requested Information!"}
# 	#, allow_nil:false
# 	validates_uniqueness_of :UIN, :email, :case_sensitive => false
# end
# 	

class Student < ActiveRecord::Base
	validates :name, presence: true
	validates :UIN, presence: true
	validates :email, presence: true
	validates_uniqueness_of :email,:UIN
	validates :degree, presence: true
	validates :position_type, presence: true
end