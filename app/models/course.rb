class Course < ActiveRecord::Base

	has_many :ratings
	has_many :comments
	has_many :professors, through :professor_course

	t.primary_key :id
	t.string :name
	t.string :semester
	t.integer :ratings_avgRate
	t.text :comments_commentText
	t.string :teach_by

end
