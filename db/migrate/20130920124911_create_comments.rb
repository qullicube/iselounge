class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text: commentText
      	t.timestamps
    end

   	create_table :courses do |t|
      	t.string: name
	  	t.integer: ratings_avgRate
      	t.timestamps
   	end

   	create_table :users do |t|
		t.string: name
		t.boolean: userVerify
		t.integer: numberOfPost
      	t.timestamps
    end
  end
end
