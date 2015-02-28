class CreateCourseContents < ActiveRecord::Migration
  def change
    create_table :course_contents do |t|
      t.string :name
      t.text :description
      t.text :link
      t.integer :rating

      t.timestamps
    end
  end
end
