class AddCourseIdToContent < ActiveRecord::Migration
  def change
    add_column :course_contents, :course_id, :integer
  end
end
