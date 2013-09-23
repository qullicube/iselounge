class CreateDummies < ActiveRecord::Migration
  def change
    create_table :dummies do |t|
      t.string :name
      t.integer :foo

      t.timestamps
    end
  end
end
