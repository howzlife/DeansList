class CreatePdfs < ActiveRecord::Migration
  add_index(:pdfs, :course_contents_id)
  def change
    create_table :pdfs do |t|
      t.integer :course_contents_id

      t.timestamps
    end
  end
end
