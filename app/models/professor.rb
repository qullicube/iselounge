class Professor < ActiveRecord::Base

	has_many :courses, through :professor_course

	t.string :name
	t.integer :id
	t.string :courses_teach_by

end
