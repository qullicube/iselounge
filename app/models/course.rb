class Course < ActiveRecord::Base

	has_many: ratings
	has_many: comments

	t.primary_key: id
	t.string: name
	t.string: semester
	t.integer: ratings_avgRate
	t.text: comments_commentText

end
