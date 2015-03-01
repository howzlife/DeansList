class CreatePdfs < ActiveRecord::Migration
  
  def change
    create_table :pdfs do |t|
      t.integer :course_contents_id

      t.timestamps
    end
    add_index(:pdfs, :course_contents_id)
  end
end
