class RemoveCourseIdFromPdfs < ActiveRecord::Migration
  def change
  	 remove_column :pdfs, :course_id, :integer
  end
end
