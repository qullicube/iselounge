class Rating < ActiveRecord::Base

	belong_to :user , dependent :restrict with exception
	belong_to :course, dependent :delete

	t.string :courses_name
	t.string :users_name
	t.primary_key :id
	t.integer :knowRating
	t.integer :funRating
	t.integer :diffRating
	t.integer :avgRate
	t.timestamp :ratingDate

end
