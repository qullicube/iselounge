class Professor < ActiveRecord::Base

	has_many :courses, :through => :professors_courses
	
end
