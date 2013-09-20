class CreateMakeRatings < ActiveRecord::Migration
  def change
    create_table :make_ratings do |t|

      t.timestamps
    end
  end
end
