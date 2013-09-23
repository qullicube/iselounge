class ProfessorCourse < ActiveRecord::Base

	belongs_to :courses
	belongs_to :professors

end
