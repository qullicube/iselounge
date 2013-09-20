class Comment < ActiveRecord::Base

	belong_to: user , dependent: restrict with exception
	belong_to: course, dependent: delete

	t.string: courses_name
	t.primary_key: id
	t.string: users_name
	t.text: commentText
	t.timestamp: commentDate

end
