class Course < ActiveRecord::Base

	has_many :ratings
	has_many :comments
	has_many :professors, :through => :professors_courses

end
