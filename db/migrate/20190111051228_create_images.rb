class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :course_id
      t.timestamps
    end
    
    add_index :images, [:course_id]
  end
end
