class CreateProfessorsCourses < ActiveRecord::Migration
  def change
    create_table :professors_courses do |t|
      t.integer :professors_id
	  t.integer :courses_id
      t.timestamps
    end
  end
end
