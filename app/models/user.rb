class User < ActiveRecord::Base

	has_many :comments
	has_many :rating

	t.primary_key :id
	t.string :name
	t.boolean :userVerify
	t.integer :numberOfPost


end
