class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
    	t.integer: knowRating
		t.integer: funRating
		t.integer: diffRating
		t.integer: avgRate
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
