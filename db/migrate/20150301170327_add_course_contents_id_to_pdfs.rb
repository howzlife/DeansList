class AddCourseContentsIdToPdfs < ActiveRecord::Migration
  def change
    add_column :pdfs, :course_content_id, :integer
  end
end
