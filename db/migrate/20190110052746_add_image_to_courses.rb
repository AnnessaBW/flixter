class AddImageToCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :image do |t|
      t.text :caption
      t.integer :course_id
      t.timestamps
    end
    
    add_index :image, :course_id
end
