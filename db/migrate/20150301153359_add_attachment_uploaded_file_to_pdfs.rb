class AddAttachmentUploadedFileToPdfs < ActiveRecord::Migration
  def self.up
    change_table :pdfs do |t|
      t.attachment :uploaded_file
    end
  end

  def self.down
    remove_attachment :pdfs, :uploaded_file
  end
end
