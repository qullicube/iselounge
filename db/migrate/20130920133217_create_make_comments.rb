class CreateMakeComments < ActiveRecord::Migration
  def change
    create_table :make_comments do |t|

      t.timestamps
    end
  end
end
