class Comment < ActiveRecord::Base

	belongs_to :user , dependent :restrict with exception
	belongs_to :course, dependent :delete
	
end
