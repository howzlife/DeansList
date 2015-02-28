class Asset < ActiveRecord::Base
	belongs_to :course

	#set up "uploaded_file" field as attached_file (using Paperclip) 
	has_attached_file :uploaded_file
	  
	validates_attachment_size :uploaded_file, :less_than => 20.megabytes   
	validates_attachment_presence :uploaded_file

	def file_name 
    uploaded_file_file_name 
	end
end
