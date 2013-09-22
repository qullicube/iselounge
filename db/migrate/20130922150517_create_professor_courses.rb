class CreateProfessorCourses < ActiveRecord::Migration
  def change
    create_table :professor_courses do |t|
      t.integer :professors_id
	  t.integer :courses_id
      t.timestamps
    end
  end
end
