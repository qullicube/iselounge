class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
	  t.string :name
	  t.string :courses_teach_by
      t.timestamps
    end
  end
end
