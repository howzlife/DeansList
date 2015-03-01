class AddBodyToCourseContent < ActiveRecord::Migration
  def change
    add_column :course_contents, :body, :text
  end
end
