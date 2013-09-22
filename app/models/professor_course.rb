class ProfessorCourse < ActiveRecord::Base

	belongs_to :courses
	belongs_to :professors

	t.integer :professors_id
	t.integer :courses_id
end
