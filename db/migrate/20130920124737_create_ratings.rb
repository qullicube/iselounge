class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
    	t.integer :know_rating
		t.integer :fun_rating
		t.integer :diff_rating
		t.integer :avg_rating
      	t.timestamps
    end
   end
end
