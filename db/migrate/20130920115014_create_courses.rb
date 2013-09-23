class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :number
      t.integer :year
      t.integer :semester
      t.text :description
      t.timestamps
    end
  end
end
