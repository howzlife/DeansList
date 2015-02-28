class CreateAssets < ActiveRecord::Migration

  def self.up
    add_attachment :uploaded_file
  end

  def self.down
    remove_attachment :uploaded_file
  end
  def change
  	drop_table :assets
    create_table :assets do |t|
      t.integer :course_id
      
      t.timestamps
    end
  end
end
