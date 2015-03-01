class AddAttachmentUploadedFileToCourseContents < ActiveRecord::Migration
  def self.up
    change_table :course_contents do |t|
      t.attachment :uploaded_file
    end
  end

  def self.down
    remove_attachment :course_contents, :uploaded_file
  end
end
